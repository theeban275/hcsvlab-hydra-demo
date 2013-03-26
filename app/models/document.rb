class Document < ActiveFedora::Base
  has_metadata 'descMetadata', type: Datastream::DocumentMetadata

  belongs_to :corpus_item, :property=> :is_part_of

  delegate :year, to: 'descMetadata'
  delegate :title, to: 'descMetadata'
  delegate :corpus_name, to: 'descMetadata'
  delegate :sub_corpus_name, to: 'descMetadata'
  delegate :media_type, to: 'descMetadata'
  delegate :url, to: 'descMetadata'

  def to_json
  	{
  		year: year,
  		title: title,
  		corpus_name: corpus_name,
  		sub_corpus_name: sub_corpus_name,
  		media_type: media_type,
  		ur: url
  	}
  end

end