require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  def scrape_page
    doc = Nokogiri::HTML(open('https://www.imdb.com/chart/boxoffice/'))
  
  end

  def scrape_movie( url = 'title/tt3104988/') #?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=f9f31d04-fc22-4d12-86b4-f46e25aa2f6f&pf_rd_r=9QK3BADQX8VE4EES1Q9S&pf_rd_s=center-1&pf_rd_t=15506&pf_rd_i=boxoffice&ref_=cht_bo_2')
    doc = Nokogiri::HTML(open('https://www.imdb.com/' + url))
   # binding.pry
  end
  
  def scrape_review(url = 'title/tt3104988/criticreviews?ref_=tt_ov_rt')
    doc = Nokogiri::HTML(open('https://www.imdb.com/' + url))
    binding.pry
  end
end


#title: doc.css('tr .titleColumn')[1].text.strip
#url: doc.css('tr .titleColumn a').attribute('href').value  
  #//fix this, only need title/1234567/
#weeks in theater: doc.css('.weeksColumn')[1].text
#total gross: doc.css('.ratingColumn .secondaryInfo')[1].text

#title? doc.css('.title_wrapper h1').text.strip
#summary: doc.css('.inline.canwrap span')[0].text.strip
#metascore: doc.css('.metacriticScore').text.strip
#rating(pg-13): doc.css('.txt-block span')[0].text.capitalize
#runtime: doc.css('.txt-block time').text
#review url: doc.css('.titleReviewBarSubItem a').attribute('href').value 
        #//add after .com/title/tt1234567/

#//scrapes every other metacritic review 
#review score: doc.css('.critscore')[0].text.strip
#review publication: doc.css('.review b span')[0].text
#review author: doc.css('.review span span')[0].text 
    #some reviews may not have authors listed
#review summary:  doc.css('.review div')[5].text


