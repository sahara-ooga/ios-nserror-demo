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
| localizedFailureReason |エラーが発生した理由| 
| localizedRecoverySuggestion |復旧方法|  
| localizedRecoveryOptions |復旧するためのボタンのタイトル|  
 


予約されているdomainには、`NSCocoaErrorDomain`・`NSPOSIXErrorDomain`・`NSOSStatusErrorDomain`・`NSMachErrorDomain`がある。

## 主要なuserInfoのKey
|プロパティ名|説明|
|---|---|
|`NSURLErrorFailingURLErrorKey`|読み込みに失敗したURL|
|`NSURLErrorFailingURLStringErrorKey`|読み込みに失敗したURLの文字列|

## 参考
[NSErrorが便利すぎる件 Appleありがとう](http://qiita.com/koitaro/items/b4aef035fad757d8ade4)