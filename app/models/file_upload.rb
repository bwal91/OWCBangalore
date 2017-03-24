require 'henkei'
class FileUpload < ApplicationRecord
  

  before_save :convert


  def convert
    

  end

  # include Elasticsearch::Model
  # include Elasticsearch::Model::Callbacks

  # # used to kick off Sidekiq job after model is saved (committed)
  # # after_commit :process_document

  # # used to send model data to Elasticsearch when indexed
  # attr_accessor :document_content

  # # paperclip integration
  # has_attached_file :document

  # # model validation per paperclip attachment
  # validates :document, attachment_presence: true
  # validates_attachment_content_type :document, content_type: 'application/pdf'

  # # Elasticsearch mapping for document content
  # mapping do
  #   indexes :document_content do
  #     indexes :document_content, type: 'text'
  #     indexes :raw, index: :no, type: 'text'
  #   end
  # end

  # # Elasticsearch interface to construct document structure
  # def as_indexed_json(options={})
  #   as_json.merge(document_content: document_content)
  # end

  # # loads model data from Elasticsearch
  # def from_elasticsearch
  #   search_definition = {
  #     query: {
  #       filtered: {
  #         filter: {
  #           term: {
  #             _id: id
  #           }
  #         }
  #       }
  #     }
  #   }
  #   begin
  #     self.class.__elasticsearch__.search(search_definition).first._source
  #   rescue => e
  #     retry
  #   end
  # end

  # # called from Sidekiq job
  # def set_document_content
  #   self.document_content = document_content_from_tika
  #   __elasticsearch__.index_document
  # end

  # # loads document contents from Elasticearch
  # def document_content_from_elasticsearch
  #   from_elasticsearch[:document_content]
  # end

  # # loads document contents from Tika REST API
  # def document_content_from_tika
  #   meta_data = JSON.parse(`curl -H "Accept: application/json" -T "#{document.path}" http://#{ENV['TIKA_HOST']}:9998/meta`)
  #   `curl -X PUT --data-binary "@#{document.path}" --header "Content-type: #{meta_data['Content-Type']}" http://#{ENV['TIKA_HOST']}:9998/tika --header "Accept: text/plain"`.strip
  # end

  # private

  # # after commit hook to create Sidekiq job
  # def process_document
  #   DocumentProcessorJob.perform_now self
  # end
end