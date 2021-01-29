module ReadingsHelper
    def spread_id_field(reading)
        if params[:spread_id]
          hidden_field_tag "reading[spread_id]", params[:spread_id]
        elsif reading.spread.nil?
          select_tag "reading[spread_id]", options_from_collection_for_select(Spread.all, :id, :title)
        else
          hidden_field_tag "reading[spread_id]", reading.spread_id
        end
    end

    def index_title
      if params[:user_id]
        "#{User.find_by_id(params[:user_id]).username}'s"
      elsif params[:spread_id]
        "#{Spread.find_by_id(params[:spread_id]).title}"
      else
        "All"
      end
    end

    # def card_names_and_positions(reading) # CURRENTLY TESTING
    #     reading.cards_readings.each do |cr| 
    #       link_to cr.card_name_and_position, card_path(c.card)
    #     end
    # end
end
