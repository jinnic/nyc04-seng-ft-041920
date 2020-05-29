require('pry')

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

#helper method
def all_players
  all_players = game_hash.each do |location, attrubutes|
    attrubutes[:players]
  end.flatten
end

def player(player_name)
  player = all_players.find do |player_hash|
    player_hash[:player_name] == player_name
    binding.pry
  end
end

def num_points_scored (player_name)
  # game_hash.each do |location, attrubutes|

  #   #find Enumerable returens first matcing value
  #   #or nil for not matching
  #   attrubutes[:players].find do |player_hash|
  #     #true => it returns player_name
  #     player_hash[:player_name] == player_name
  #   end
  # end

  # all_players = game_hash.each do |location, attrubutes|
  #   attrubutes[:players]
  # end.flatten

  # player = all_players.find do |player_hash|
  #   player_hash[:player_name] == player_name
  # end
  #player(player_name)[:points]
  

  binding.pry

end

player("Jeff Adrien")


def shoe_size(player_name)

end



############################################################################
# Breakout Workshop EXERCISE:                                              #
# # 1. Define a method called get_names that takes an array of instructors #
# #    and returns just their names.                                       #
# # 2. Define a method called excited_instructors that takes               #
# #    an array of instructors and returns all the instructors with        #
# #    an energy level higher than 5                                       #
# # 3. Define a method called get_instructor_by_hometown that takes        #
# #    an array of instructors AND a string of a hometown                  #
# #    and returns just the one instructor whose hometown matches          #
############################################################################


instructors = [
  {name: 'Michelle', hometown: 'Culiacan', energy_level: 7},
  {name: 'Jack', hometown: 'Jersey City', energy_level: 8},
  {name: 'Rei', hometown: 'Hannacroix', energy_level: 9},
  {name: 'Raffy', hometown: 'Middle of Nowhere', energy_level: 1000000},
  {name: 'Ian', hometown: 'Upstate NY', energy_level: 10}
]

def get_names(instructors)
  instructors.map do |instructors_hash|
    instructors_hash[:name]
  end
end

def excited_instructors(instructors)
  instructors.select do |instructors_hash|
    instructors_hash[:energy_level] > 5
  end
end

def get_instructor_by_hometown(instructors, hometown)
  instructors.find do |instructor|
    instructor[:hometown] == hometown
  end
end


def all_players
  game_hash.map do |location, attributes|
    attributes[:players]
  end.flatten
end

def player (player_name)
  all_players.find do |player_hash|
    player_hash[:player_name] == player_name
  end
end


def num_points_scored (player_name)
  player(player_name)[:points]
end

def shoe_size (player_name)
  player(player_name)[:shoe]
end

num_points_scored("Reggie Evans")



