var page_token = 'EAAJyuJXSO2IBADNITonTPVAZAMUa4YZBfZB0pgcEmMFqYO7sxWq17rBGWXP1VEBcCWFJ8PbOv47NCLXxEx5qsvU9B8MxS0ApdCdv6UYWOoQuXJzCVGX0ZClZBLAxanSZBhiPb4A1aYZC0fEMSU9m3uZAX5Fhx2RRAZB0NkXlUIOqw0xXhpQD0A75cDOnZAGP1SlJyPI4wGDMlfgptbVEApzryG';
var user_token = 'EAAJyuJXSO2IBAAvUTjaLrDmULu8e1jmHQMvLMTqQAqkM4GNegPUZBYeZCaZAsyAzKUofBwyPufQGBQMZBsDrbyEMllMvKHcbzVP5DZATYdg8Ik1yVl5eNO8nlj9iVzCr6txibZByhvZAMQOLWATtKhOKQSaXkRVCbPRInHBkF11kIedPbWF95dG4E792FR6ej57wD7QslA2ucHMrbSvzbYY';

window.fbAsyncInit = function(){
  FB.init({
      appId            : '689087066553186',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v16.0'
    });
  FB.api(
    '/100344976347250/feed/',
    'GET',
    {"access_token":page_token,"fields":"id,permalink_url,created_time,is_hidden,is_published"},
    function(response) {
      try{
        link = response["data"][0]["permalink_url"]+"/";
        var content = document.createElement("div");
        content.className = "content-element";
        content.innerHTML = "<div class='fb-post' data-href='"+link+"' data-width='500'></div>";
        document.getElementsByClassName("main-content")[0].appendChild(content);
        FB.XFBML.parse();
      }catch(err){
        console.log(err.message);
      }
    }
  );
};
