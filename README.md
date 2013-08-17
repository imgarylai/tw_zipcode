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

```
//= require tw_zipcode
```
### Example

預設樣式：

```
<div id="twzipcode"></div>
```

自訂樣式：

```
<div id="twzipcode">
  <div data-role="county" data-style="county"></div>
  <!--自訂縣市選單容器，以及套用 .county 樣式-->
  <div data-role="district" data-style="district"></div>
  <!--自訂鄉鎮市區選單容器，以及套用 .district 樣式-->
  <div data-role="zipcode" data-style="zipcode"></div>
  <!--自訂郵遞區號容器，以及套用 .zipcode 樣式-->
</div>
```

javascripts:

```
$(function () {
  $('#twzipcode').twzipcode({
    countyName: 'address[city]',
    districtName: 'address[district]',
    zipcodeName: 'address[zip_code]',
  });
});
```
裡面設定countyName, districtName, zipcodeName 可以配合自己的 model 跟 form_for helper。有時間看能不能把這些 javascripts 的設定改成用 helper 來使用。

## 參數

名稱 | 類型 | 說明
--- | --- | ---
detect | Boolean | 是否偵測用戶位置 **預設 false, 此功能提供的數據並非絕對正確，僅供參考**
countyName | String | 指定縣市下拉清單的表單名稱 **預設 county**
districtName | String | 指定鄉鎮市區下拉清單的表單名稱 **預設 district**
zipcodeName | String | 指定郵遞區號輸入框的表單名稱 **預設 zipcode**
countySel | String | 縣市預設值
districtSel | String | 鄉鎮市區預設值
zipcodeSel | String | 郵遞區號預設值
onCountySelect | Function | 綁定縣市選單 Change 事件。 **version 1.5**
onDistrictSelect | Function | 綁定鄉鎮市區選單 Change 事件。 **version 1.5**
onZipcodeKeyUp | Function | 綁定郵遞區號輸入框 keyUp 事件（readonly 必須為 false）。 **version 1.5**
readonly | Boolean | 郵遞區號輸入框是否唯讀？ **預設 true**
css | Array | 表單元件樣式名稱 **格式: ['縣市', '鄉鎮市區', '郵遞區號']**

## 方法

方法 | 說明
--- | ---
destory | 從指定的元素移除 Plugin: **$(selector).twzipcode('destory');**
reset | 將指定的元素恢復未選狀態: **$(selector).twzipcode('reset');**
serialize | 將指定的元素輸出為 URL Query: **$(selector).twzipcode('serialize');**

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Contact

[@garylai1990](http://www.twitter.com/garylai1990)
