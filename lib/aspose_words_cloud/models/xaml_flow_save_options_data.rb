
require 'date'

module AsposeWordsCloud
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose" file="XamlFlowSaveOptionsData.rb">
 #   Copyright (c) 2017 Aspose.Words for Cloud
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

  # container class for xaml flow save options
  class XamlFlowSaveOptionsData
    # Gets or sets a value determining how colors are rendered. { Normal | Grayscale}
    attr_accessor :color_mode

    # format of save
    attr_accessor :save_format

    # name of destination file
    attr_accessor :file_name

    # Gets or sets a value determining how DrawingML shapes are rendered. { Fallback | DrawingML }
    attr_accessor :dml_rendering_mode

    # Gets or sets a value determining how DrawingML effects are rendered. { Simplified | None | Fine }
    attr_accessor :dml_effects_rendering_mode

    # Controls zip output or not. Default value is false.
    attr_accessor :zip_output

    # Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
    attr_accessor :update_last_saved_time_property

    # Gets or sets value determining whether content of  is updated before saving.
    attr_accessor :update_sdt_content

    # Gets or sets a value determining if fields should be updated before saving the document to a fixed page format. Default value for this property is true
    attr_accessor :update_fields

    # Specifies the physical folder where images are saved when exporting
    attr_accessor :images_folder

    # Specifies the name of the folder used to construct image URIs
    attr_accessor :images_folder_alias


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'color_mode' => :'ColorMode',
        :'save_format' => :'SaveFormat',
        :'file_name' => :'FileName',
        :'dml_rendering_mode' => :'DmlRenderingMode',
        :'dml_effects_rendering_mode' => :'DmlEffectsRenderingMode',
        :'zip_output' => :'ZipOutput',
        :'update_last_saved_time_property' => :'UpdateLastSavedTimeProperty',
        :'update_sdt_content' => :'UpdateSdtContent',
        :'update_fields' => :'UpdateFields',
        :'images_folder' => :'ImagesFolder',
        :'images_folder_alias' => :'ImagesFolderAlias'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'color_mode' => :'String',
        :'save_format' => :'String',
        :'file_name' => :'String',
        :'dml_rendering_mode' => :'String',
        :'dml_effects_rendering_mode' => :'String',
        :'zip_output' => :'BOOLEAN',
        :'update_last_saved_time_property' => :'BOOLEAN',
        :'update_sdt_content' => :'BOOLEAN',
        :'update_fields' => :'BOOLEAN',
        :'images_folder' => :'String',
        :'images_folder_alias' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'ColorMode')
        self.color_mode = attributes[:'ColorMode']
      end

      if attributes.key?(:'SaveFormat')
        self.save_format = attributes[:'SaveFormat']
      end

      if attributes.key?(:'FileName')
        self.file_name = attributes[:'FileName']
      end

      if attributes.key?(:'DmlRenderingMode')
        self.dml_rendering_mode = attributes[:'DmlRenderingMode']
      end

      if attributes.key?(:'DmlEffectsRenderingMode')
        self.dml_effects_rendering_mode = attributes[:'DmlEffectsRenderingMode']
      end

      if attributes.key?(:'ZipOutput')
        self.zip_output = attributes[:'ZipOutput']
      end

      if attributes.key?(:'UpdateLastSavedTimeProperty')
        self.update_last_saved_time_property = attributes[:'UpdateLastSavedTimeProperty']
      end

      if attributes.key?(:'UpdateSdtContent')
        self.update_sdt_content = attributes[:'UpdateSdtContent']
      end

      if attributes.key?(:'UpdateFields')
        self.update_fields = attributes[:'UpdateFields']
      end

      if attributes.key?(:'ImagesFolder')
        self.images_folder = attributes[:'ImagesFolder']
      end

      if attributes.key?(:'ImagesFolderAlias')
        self.images_folder_alias = attributes[:'ImagesFolderAlias']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          color_mode == other.color_mode &&
          save_format == other.save_format &&
          file_name == other.file_name &&
          dml_rendering_mode == other.dml_rendering_mode &&
          dml_effects_rendering_mode == other.dml_effects_rendering_mode &&
          zip_output == other.zip_output &&
          update_last_saved_time_property == other.update_last_saved_time_property &&
          update_sdt_content == other.update_sdt_content &&
          update_fields == other.update_fields &&
          images_folder == other.images_folder &&
          images_folder_alias == other.images_folder_alias
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [color_mode, save_format, file_name, dml_rendering_mode, dml_effects_rendering_mode, zip_output, update_last_saved_time_property, update_sdt_content, update_fields, images_folder, images_folder_alias].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Time.at(/\d/.match(value)[0].to_f).to_datetime
      when :Date
        Time.at(/\d/.match(value)[0].to_f).to_date
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        temp_model = AsposeWordsCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
