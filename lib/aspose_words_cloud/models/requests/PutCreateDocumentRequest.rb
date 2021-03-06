 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="PutCreateDocumentRequest.rb">
 #   Copyright (c) 2018 Aspose.Words for Cloud
 # </copyright>
 # <summary>
 #   Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 # 
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 # 
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #

module AsposeWordsCloud

  #
  # Request model for put_create_document operation.
  #
  class PutCreateDocumentRequest

        # File storage, which have to be used.
        attr_accessor :storage
        # The file name.
        attr_accessor :file_name
        # The document folder.
        attr_accessor :folder
	
        #
        # Initializes a new instance.
        # @param storage File storage, which have to be used.
        # @param file_name The file name.
        # @param folder The document folder.
        def initialize(storage = nil, file_name = nil, folder = nil)
           self.storage = storage
           self.file_name = file_name
           self.folder = folder
        end
  end
end
