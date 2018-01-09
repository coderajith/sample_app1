if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => 'AKIAJLVXWIMYPC5HBWGQ',
      :aws_secret_access_key => '8n/5OpTSV3h6QoHXcnXbjf4X6K+6OSDwGuTsks7k'
    }
    config.fog_directory     =  'sample-application-ajith'
  end
end
