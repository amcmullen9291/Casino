class GuestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :balance, :won_games, :lost_games, :total_played
end
