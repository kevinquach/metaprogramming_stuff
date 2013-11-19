require 'builder'
xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)

xml.coder {
  xml.name 'Kevin', nickname: 'KQ'
  xml.language 'Ruby'
}

xml
