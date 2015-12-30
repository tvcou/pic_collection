$(function(){
  $('#container').masonry({
    itemSelector: '.box', //対象の要素のclassを指定
    columnWidth: 10, //一列の幅サイズを指定
    isResizable: true, //画面サイズ変更時の並び替え
    isAnimated: true, //アニメーション設定
    isFitWidth: true, //親要素の幅サイズを整える
    isRTL: false,     //要素が左右逆にする設定
    gutterWidth: 0,   //要素間の溝の幅
    containerStyle: { position: 'relative' } //親要素にスタイルを追加する
  });
});
