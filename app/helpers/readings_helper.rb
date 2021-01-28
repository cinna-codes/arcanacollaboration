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
end
