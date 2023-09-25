# README

* Реализуйте метод Array#map

* Реализуйте метод attr_accessor

* Перепишите код без использования if

class HtmlFormatter
  def initialize(body)
    @body = body
  end
  def to_s
    "#{@body}"
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
  def formatted(type=nil)
    if type == :json
      JsonFormatter.new(@body)
    elsif type == :html
      HtmlFormatter.new(@body)
    else
      raise 'an unknown format type'
    end
  end
end

Проверка использования:
text = Text.new('New text')
puts text.formatted(:json)