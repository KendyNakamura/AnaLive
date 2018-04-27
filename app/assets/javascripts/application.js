// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap
//= require tether
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require infinite-scroll.pkgd.min
//= require_tree .

// path=new Array();
// $(function(){
//   $('#posts').infiniteScroll({
//     loading: {
//       img:     "http://www.mytreedb.com/uploads/mytreedb/loader/ajax_loader_blue_48.gif",
//       msgText: "loading..."
//     },
//     // path: 'nav.pagination a[rel=next]',
//     navSelector: "nav.pagination",
//     nextSelector: "nav.pagination a[rel=next]",
//     itemSelector: "#posts div.posts" /* このDOMに差し掛かった時に、次のページのロードが始まる*/
//   });
// });

$(function() {
    //クリックしたときのファンクションをまとめて指定
    $('.tab li').click(function() {
        //.index()を使いクリックされたタブが何番目かを調べ、
        //indexという変数に代入します。
        var index = $('.tab li').index(this);
        //コンテンツを一度すべて非表示にし、
        $('.content > div').css('display','none');
        //クリックされたタブと同じ順番のコンテンツを表示します。
        $('.content > div').eq(index).css('display','block');
        //一度タブについているクラスselectを消し、
        $('.tab li').removeClass('select');
        //クリックされたタブのみにクラスselectをつけます。
        $(this).addClass('select')
    });
});
