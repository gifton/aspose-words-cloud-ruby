require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""
  FILE_PATH = "../../TestData/Common/"

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

  # Inserting page numbers
  def insert_page_numbers
    filename = 'test_multi_pages.docx'
    dest_name = 'TestPostInsertPageNumbers.docx'
    body = PageNumber.new({:Alignment => 'center', :Format => '{PAGE} of { NUMPAGES }'})
    folder = nil

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostInsertPageNumbersRequest.new filename, body, folder, :dest_file_name => dest_name
    result = @words_api.post_insert_page_numbers request
  end

end

document = Document.new()
puts document.insert_page_numbers