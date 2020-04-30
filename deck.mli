open Card
(* type suite *)
type deck = card list
(* Initial game deck - count value for each card already in json file, need to 
   count/ include all property cards as well. *)
val initialize_deck : unit -> deck 
val remove_top_card : deck -> card * deck 
val remove_top_n_cards : deck -> int -> card list * deck 
