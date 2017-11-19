if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => 'ap-northeast-1',     # 例: 'ap-northeast-1'
      :aws_access_key_id     => 'AKIAJEC3TSWLAHZ767HQ',
      :aws_secret_access_key => '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'
    }
    config.fog_directory     =  'com1'
  end
end
