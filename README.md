# NSError

## 概要
`NSError`はエラー情報を管理するクラスです。

## イニシャライザ

|メソッド名|説明|サンプル|
|---|---|---|
|`init(domain:code:userInfo:)` |ドメイン・エラーコード・付帯情報を与える| `let error = NSError(domain: "some error",`<br>`code: 500, userInfo: nil)` | 

## 主要プロパティ

|プロパティ名|説明|
|---|---|
|code |エラーコード |
|domain |ドメイン. 予約語がある.|
|userInfo |選択されているセグメントのインデックス | `segment.selectedSegmentIndex` | 
| localizedDescription |ローカライズされたエラーの説明.`userInfo`の`NSLocalizedDescriptionKey`で同じ値が取り出せる |  

予約されているdomainには、`NSCocoaErrorDomain`・`NSPOSIXErrorDomain`・`NSOSStatusErrorDomain`・`NSMachErrorDomain`がある。