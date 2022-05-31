# drop.rb
def canonical_url
  @canonical_url ||= begin
    if page["canonical_url"].present?
      page["canonical_url"].to_s.gsub(%r!/index\.html$!, "/")
    else
      filters.absolute_url(page["url"]).to_s.gsub(%r!/index\.html$!, "/")
    end
  end
end
