class CorpusItem < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::CorpusItemMetadata

  has_many :documents, :property => :is_part_of

  delegate :year, to: 'descMetadata'
  delegate :title, to: 'descMetadata'
  delegate :name, to: 'descMetadata'
  delegate :sub_corpus_name, to: 'descMetadata'

end