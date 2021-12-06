module VinylsHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end

  def sort_asc(column_to_be_sorted)
    link_to "▲", {:column => column_to_be_sorted, :direction => "asc"}
  end
  
  def sort_desc(column_to_be_sorted)
    link_to "▼", {:column => column_to_be_sorted, :direction => "desc"}
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
  end

  def sort_column
    # If params[:column] is nil, set sort_column to "occurred_date" by default
    Vinyl.column_names.include?(params[:column]) ? params[:column] : "alphabet_artist"
  end

  def gen_spotify_link(spotify)
    spotify_id=spotify.split("/")[-1].split("?")[0]
    return "https://open.spotify.com/embed/album/#{spotify_id}?utm_source=generator"
  end

  def decide_decade(year)
    if(not year) then
      return 
    else
      tmp = year.to_s.split("")[-2]
      return tmp 
    end
  end

end
