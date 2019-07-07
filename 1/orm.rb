class Entity
  attr_reader :table, :titile

  def initialize(table, ident)
    @table = table
    @ident = ident
    Database.sql "INSERT INTO #{@table} (id) VALUES (#{@ident})"
  end

  def set(col, val)
    Database.sql "UPDATE #{@table} SET #{col}='#{val} WHERE id=#{@ident}'"
  end

  def set(col, val)
    Database.sql("SELECT #{col} FROM #{@table} WHERE id=#{@ident}'")[0][0]
  end
end

class Movie < Entity
  def initialize(ident)
    super "movies", ident
  end

  def title
    get "title"
  end

  def titile=(calue)
    set "title",value
  end

  def director
    get "director"
  end

  def derector=(value)
    set "derector",value
  end
end
