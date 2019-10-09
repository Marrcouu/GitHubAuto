class DeepLinks
  @hash_deeplinks = {
    :"home" => {url:'https://cdrive.page.link/?link=https%3A%2F%2Fwww.clarodrive.com%2F%3Futm_campaign%3DQA%26utm_medium%3Dtest%26utm_source%3Dprod_test&apn=com.clarodrive.android&isi=1250666367&ibi=com.clarodrive'},
    :"settings" => {url:'https://cdrive.page.link/?link=https%3A%2F%2Fwww.clarodrive.com%2F%3Futm_campaign%3DQA%26utm_medium%3Dtest%26utm_source%3Dprod_test%26redirect%3D%2Fsettings%2Fuser&apn=com.clarodrive.android&isi=1250666367&ibi=com.clarodrive'},
    :"Familiar" => {url:'https://cdrive.page.link/?link=https%3A%2F%2Fwww.clarodrive.com%2F%3Futm_campaign%3DQA%26utm_medium%3Dtest%26utm_source%3Dprod_test%26redirect%3D%2Fsettings%2Fuser%2Ffamily_plan&apn=com.clarodrive.android&isi=1250666367&ibi=com.clarodrive'},
    :"Obtén más espacio" => {url:'https://cdrive.page.link/?link=https%3A%2F%2Fwww.clarodrive.com%2F%3Futm_campaign%3DQA%26utm_medium%3Dtest%26utm_source%3Dprod_test%26redirect%3D%2Fsettings%2Fuser%2Fpayment_info&apn=com.clarodrive.android&isi=1250666367&ibi=com.clarodrive'},
    :"Galería" => {url:'https://cdrive.page.link/?link=https%3A%2F%2Fwww.clarodrive.com%2F%3Futm_campaign%3DQA%26utm_medium%3Dtest%26utm_source%3Dprod_test%26redirect%3D%2Fapps%2Fgallery&apn=com.clarodrive.android&isi=1250666367&ibi=com.clarodrive'},
    :"Favoritos" => {url:'https://cdrive.page.link/?link=https%3A%2F%2Fwww.clarodrive.com%2F%3Futm_campaign%3DQA%26utm_medium%3Dtest%26utm_source%3Dprod_test%26redirect%3D%2Fapps%2Ffiles%2F%3Fview%3Dfavorites&apn=com.clarodrive.android&isi=1250666367&ibi=com.clarodrive'}
  }
  class << self
    def send_url(deeplink)
      @url = @hash_deeplinks[deeplink][:url]
      @url
    end
  end
end