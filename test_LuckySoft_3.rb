class HtmlFormatter
  def initialize(body)
    @body = body
  end

  def to_s
    @body.to_s
  end
end

class JsonFormatter
  def initialize(body)
    @body = body
  end

  def to_s
    "{ body: #{@body} }"
  end
end

class Text
  def initialize(body)
    @body = body
  end

  def formatted(type = nil)
    formatter = {
      json: JsonFormatter.new(@body),
      html: HtmlFormatter.new(@body)
    }[type]

    raise 'an unknown format type' unless formatter

    formatter
  end
end

text = Text.new('New text')
puts text.formatted(:json)
