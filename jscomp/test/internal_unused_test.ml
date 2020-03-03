[@@@warning "A"]
[@@@warnerror "a"]
;; module [@internal.local] P0 = struct 
  let a = 3 in 
  Js.log a ; a + 2
end  
open! P0

;; module [@internal.local] P1 = struct 
  exception A
  let _a = 2
end  
open! P1

let f () = raise A

let%local b = 3

let%local c = b + 2

[%%local
let d = c 
let f = d 
let h = fun[@bs] a b -> a + b
]



;; Js.log f 

;; Js.log (h 1 2 [@bs])

(* [%%debugger.chrome] *)