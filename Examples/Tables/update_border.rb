require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""
  FILE_PATH = "../../TestData/DocumentElements/Tables/"

  def initialize
    AsposeWordsCloud.configure do |config|
      config.api_key['api_key'] = APP_KEY
      config.api_key['app_sid'] = APP_SID
    end
    @words_api = WordsApi.new
    
    AsposeStorageCloud.configure do |config|
      config.api_key['api_key'] = APP_KEY
      config.api_key['app_sid'] = APP_SID
    end
    @storage_api = StorageApi.new
  end

  def upload_file(file_name)
    file = File.read(FILE_PATH << file_name)
    version_id = nil
    storage = nil
    request = PutCreateRequest.new(file_name, file, version_id, storage)

    response = @storage_api.put_create(request)
  end

  # Updating borders
  def update_border
    filename = 'TablesGet.docx'
    index = 0
    border = Border.new({:BorderType => 'Left', :Color => XmlColor.new({:Alpha => 2}),
                          :DistanceFromText => 6, :LineStyle => 'DashDotStroker',
                          :LineWith => 2, :Shadow => true})
    folder = nil # Source document is saved at the root of the storage

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = UpdateBorderRequest.new filename, border, 'tables/1/rows/0/cells/0/', index, folder
    result = @words_api.update_border request
  end

end

document = Document.new()
puts document.update_border