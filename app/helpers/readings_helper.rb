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

    def card_names_and_positions(reading) # CURRENTLY NOT WORKING
        reading.cards_readings.each do |c| 
          link_to ((c.card.name) + (c.upright == true ? "Upright" : "Reversed")), card_path(c.card)
        end
    end
end
