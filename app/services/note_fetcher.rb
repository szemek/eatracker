class NoteFetcher
  def self.all
    Note.order(Note[:created_at].desc)
  end
end
