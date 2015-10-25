# tw_zipcode

來自 [jQuery TWzipcode](http://app.essoduke.org/twzipcode/)

> 在網頁建立多組 3 碼台灣郵遞區號表單元素的 jQuery Plugin ─ 讀取快速、不需使用資料庫。

##  安裝/Installation

將此 gem 加入到 Gemfile:

    gem 'tw_zipcode'

安裝:

    $ bundle

或是可以安裝到電腦內:

    $ gem install tw_zipcode

## 使用說明/Usage

把以下這行加入到`application.js`:

``` js
//= require tw_zipcode
```
### Example

預設：

``` html
<!-- HTML -->
<div id="twzipcode"></div>
```

``` js
/* Javascript */
$('#twzipcode').twzipcode();
```

自訂樣式：

``` css
/* CSS */
.zipcode {
    background-color: #c00;
    color: #fff;
}
.county {
    background-color: #4169E1;
    color: #fff;
}
.district {
    background-color: #008000;
    color: #fff;
}
```

``` javascript
/* Javascript */
$('#twzipcode').twzipcode({
    // 依序套用至縣市、鄉鎮市區及郵遞區號框
    'css': ['county', 'district', 'zipcode']
});
```
裡面設定countyName, districtName, zipcodeName 可以配合自己的 model 跟 form_for helper。有時間看能不能把這些 javascripts 的設定改成用 helper 來使用。

## 參數

名稱 | 類型 | 預設 | 說明
--- | --- | --- | ---
countyName | string | county | 指定縣市下拉清單的表單名稱。
countySel | string | | 縣市預設值
css | Array | | 表單元件樣式名稱。格式: ['縣市', '鄉鎮市區', '郵遞區號']
detect | boolean | false | 是否偵測用戶位置（此功能提供的數據僅供參考）
districtName | string | district | 指定鄉鎮市區下拉清單的表單名稱。
districtSel | string | | 鄉鎮市區預設值
onCountySelect | Function | |綁定縣市選單 Change 事件。
onDistrictSelect | Function | |綁定鄉鎮市區選單 Change 事件。
onZipcodeKeyUp | Function | |綁定郵遞區號輸入框 keyUp 事件（readonly 必須為 false）。
readonly | boolean | true | 郵遞區號輸入框是否唯讀？
zipcodeName | string | zipcode | 指定郵遞區號輸入框的表單名稱。
zipcodeSel | string | | 郵遞區號預設值
zipcodeIntoDistrict | boolean | false | 隱藏郵遞區號輸入框，並顯示於鄉鎮市區清單內。

## 方法

名稱 | 說明
--- | ---
var foo = $(selector).twzipcode('data'); | 取得已選取縣市的郵遞區號 JSON 物件。
var foo = $(selector).twzipcode('serialize'); | 取得 Query String。
$(selector).twzipcode('reset'); | 重置清單。
$(selector).twzipcode('destroy'); | 移除 TWzipcode plugin。

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Contact

[@imgarylai](http://www.twitter.com/imgarylai)
