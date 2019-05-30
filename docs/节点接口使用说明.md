# 节点的API说明

节点是提供了很多API供外部调用，这些API有一个js的封装：U3.js。  
在我们的官方网站开发者文档库里，也提供了[U3 API说明](https://developer.ultrain.io/documents)，可以看到完整的介绍。  

U3是一个js模块，我们在[这里](https://developer.ultrain.io/tutorial/u3_tutorial)提供了如何使用U3的教程。  

下面我们介绍几个常用的API。

## 查询链的块高
**(static) getChainInfo()**  
getChainInfo能够查询到链的基本信息，它的返回值是这样的格式：
```json
{
  "server_version": "e587b4e5",
  "chain_id": "99b1cef2acdf6c4bcbce64c6490a999b819c236b19e3cd7cd2c3accc71da30ef",
  "head_block_num": 414044,
  "last_irreversible_block_num": 414043,
  "last_irreversible_block_id": "0006515b91533e015b6f02cdcd1e3d0df1a2193daa81d4189845d4251b5c8c07",
  "head_block_id": "0006515c56cc1e006837af380c50281725351355e3da299581f93554caaf4cbc",
  "head_block_time": "2019-05-28T08:47:00.000",
  "head_block_proposer": "m.xuanwen",
  "virtual_block_cpu_limit": 3000000,
  "virtual_block_net_limit": 2097152,
  "block_cpu_limit": 2992412,
  "block_net_limit": 2096768,
  "block_interval_ms": 10000
}
```

在这个JSON对象中，**head_block_num**表示当前的块高，**last_irreversible_block_num**表示当前不可逆块的块高。

## 查询块内容和交易详情
**(static) getBlockInfo(block_num_or_id)**  
getBlockInfo()方法能够查询到指定block_num或者block_id块的信息。  
一个完整的block中，包含如下格式的数据:
```json
{
  "timestamp": "2019-05-28T08:46:40.000",
  "proposer": "m.caidihua",
  "version": 0,
  "previous": "0006515965f4270f808008c203fa2d7a687f86a6cdc1e685983ac76647a7e896",
  "transaction_mroot": "e54bb98c8e0a40e7c1341fee580e4ee738233b4eb96f9380bc3d1bf4a3f5a4bd",
  "action_mroot": "f101eeeb7086801d2f24b62cca97d5d63099c01bcb85c71a0354ad65391d132b",
  "committee_mroot": "a9c245ea89cecdd98f2226845b103fcb9c641ff35b1c81550cf72e43d00ec053",
  "header_extensions": [],
  "signature": "323ce84dfedd6c73da4f2f7212dc17e3257171bd481a2f2e8c1d61e585048bb61396355d7840e092ad876cfaea7d221d987cc2418fe4874854140803114d9309",
  "transactions": [{
      "status": "executed",
      "cpu_usage_us": 3886,
      "net_usage_words": 35,
      "trx": {
        "id": "88e55f6d4c85b88fee43ed4eba22822da091a2fc299fe82fdba50b0d77847d1e",
        "signatures": [
          "SIG_K1_KeZd6V83g4KEYmJRbsHbsUP5cq6hB6vVTMR7caA5uCcqdosuaTFRZQhiarJCpj5Njdg7wnKJ3qrjV5nPGvevT4e2JMZwQ2"
        ],
        "compression": "none",
        "packed_context_free_data": "",
        "context_free_data": [],
        "packed_trx": "98f5ec5c57511dc42286000000000100409ae602ea6ed60000000000000000a1f64100000000000140f59caa61e53a9000000000a8ed3232ac01a201303238374641354535383342344530433534454641343534373143333145434442343137364132394332313246303432333944423832323632443737433942373436433938393643323141344136454446443932383931463333334545413643433945424146314134394539344230423435394345424435433535463137383534343032383943453841344330453435423046413642393543453931303530444539585106000000000000",
        "transaction": {
          "expiration": "2019-05-28T08:47:20",
          "ref_block_num": 20823,
          "ref_block_prefix": 2250425373,
          "max_net_usage_words": 0,
          "max_cpu_usage_ms": 0,
          "delay_sec": 0,
          "context_free_actions": [],
          "actions": [{
              "account": "utrio.rand",
              "name": "vote",
              "authorization": [{
                  "actor": "m.xieshennuo",
                  "permission": "active"
                }
              ],
              "data": {
                "pk_proof": "0287FA5E583B4E0C54EFA45471C31ECDB4176A29C212F04239DB82262D77C9B746C9896C21A4A6EDFD92891F333EEA6CC9EBAF1A49E94B0B459CEBD5C55F1785440289CE8A4C0E45B0FA6B95CE91050DE9",
                "blockNum": 414040
              },
              "hex_data": "a2013032383746413545353833423445304335344546413435343731433331454344423431373641323943323132463034323339444238323236324437374339423734364339383936433231413441364544464439323839314633333345454136434339454241463141343945393442304234353943454244354335354631373835343430323839434538413443304534354230464136423935434539313035304445395851060000000000"
            }
          ],
          "transaction_extensions": []
        }
      }
    }
  ],
  "block_extensions": [],
  "id": "0006515a482280f834f54e3fbb79f6674590c1cb7b588321b88dc5294273eb79",
  "block_num": 414042,
  "ref_block_prefix": 1062139188,
  "timevalue": 44268400
}
```

在这个JSON对象中，**transactions**数组中会列出打包的所有交易，通过**trx.id**的值可以找到开发者感兴趣的交易，从而可以从中提取到感兴趣的信息。
