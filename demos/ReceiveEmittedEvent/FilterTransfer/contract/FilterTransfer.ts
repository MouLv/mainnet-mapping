import { Contract } from 'ultrain-ts-lib/src/contract';
import { EmitEvent } from 'ultrain-ts-lib/src/events';
import { RNAME } from 'ultrain-ts-lib/src/account';
import { Asset } from 'ultrain-ts-lib/src/asset';

class TransferEvent implements Returnable {
  from: account_name;
  to: account_name;
  amount: Asset;
  memo: string;

  constructor(from: account_name, to: account_name, amount: Asset, memo: string) {
    this.from = from;
    this.to = to;
    this.amount = amount;
    this.memo = memo;
  }

  toString(): string {
    var json = '{';
    json += '"from":"' + RNAME(this.from);
    json += '","to":"' + RNAME(this.to);
    json += '","amount":"' + this.amount.toString();
    json += '","memo":"' + this.memo;
    json += '"}';
    return json;
  }
}

class FilterTransfer extends Contract {

  @action
  transfer(from: account_name, to: account_name, amount: Asset, memo: string): void {
    if (from == this.receiver) { // 转出
      EmitEvent("Charge", new TransferEvent(from, to, amount, memo));
    } else if (to == this.receiver) { // 转入
      EmitEvent("Withdraw", new TransferEvent(from, to, amount, memo));
    } else {
      ultrain_assert(false, "never reach here.");
    }
  }

  filterAction(originalReceiver: u64): boolean {
    return Contract.filterAcceptTransferTokenAction(this.receiver, originalReceiver, this.action);
  }
}
