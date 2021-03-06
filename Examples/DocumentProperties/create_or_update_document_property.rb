require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""

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
    file = File.read("../../TestData/Common/" << file_name)
    version_id = nil
    storage = nil
    request = PutCreateRequest.new(file_name, file, version_id, storage)

    response = @storage_api.put_create(request)
  end

  # Adding/Updating document property
  def create_or_update_document_property
    filename = 'test_doc.docx'
    property_name = 'AsposeAuthor'
    property = DocumentProperty.new({:Name => 'Author', :Value => 'Yaroslav Ekimov'})

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = CreateOrUpdateDocumentPropertyRequest.new filename, property_name, property
    result = @words_api.create_or_update_document_property request
  end

end

document = Document.new()
puts document.create_or_update_document_property