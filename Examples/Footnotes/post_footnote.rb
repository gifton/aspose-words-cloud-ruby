require 'aspose_words_cloud'
require 'aspose_storage_cloud'

class Document

  include AsposeWordsCloud
  include AsposeStorageCloud

  # Get App key and App SID from https://dashboard.aspose.cloud/
  APP_KEY = ""
  APP_SID = ""
  FILE_PATH = "../../TestData/DocumentElements/Footnotes/"

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

  # Updating footnote
  def post_footnote
    filename = 'Footnote.doc'
    index = 0
    footnote = Footnote.new({:Text => 'new text is here'})
    # File is save at the root of the storage
    folder = nil

    # Upload source document to Cloud Storage
    upload_file(filename)

    request = PostFootnoteRequest.new filename, footnote, index, folder
    result = @words_api.post_footnote request
  end

end

document = Document.new()
puts document.post_footnote