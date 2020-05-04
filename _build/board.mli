open Card
open Deck
open Player

type board

val init_mult_players: int -> string list -> player list 

val initialize_board: int -> string list -> board

val get_players: board -> player list

val get_current_player: board -> string

val increment_turn: board -> unit