(*
 * OCamlSDL - An ML interface to the SDL library
 * Copyright (C) 1999  Frederic Brunel
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *)

(* $Id: sdlevent.mli,v 1.9 2002/05/27 11:47:26 xtrm Exp $ *)

(*d Exception *)

exception SDLevent_exception of string

(*d Types *)

(* These key symbols exactly match the enum declaration of the SDL library *)
type key = 
  | KEY_UNKNOWN
  | KEY_BACKSPACE
  | KEY_TAB
  | KEY_CLEAR
  | KEY_RETURN
  | KEY_PAUSE
  | KEY_ESCAPE
  | KEY_SPACE
  | KEY_EXCLAIM
  | KEY_QUOTEDBL
  | KEY_HASH
  | KEY_DOLLAR
  | KEY_AMPERSAND
  | KEY_QUOTE
  | KEY_LEFTPAREN
  | KEY_RIGHTPAREN
  | KEY_ASTERISK
  | KEY_PLUS
  | KEY_COMMA
  | KEY_MINUS
  | KEY_PERIOD
  | KEY_SLASH
  | KEY_0
  | KEY_1
  | KEY_2
  | KEY_3
  | KEY_4
  | KEY_5
  | KEY_6
  | KEY_7
  | KEY_8
  | KEY_9
  | KEY_COLON
  | KEY_SEMICOLON
  | KEY_LESS
  | KEY_EQUALS
  | KEY_GREATER
  | KEY_QUESTION
  | KEY_AT
  (* 
     Skip uppercase letters
  *)
  | KEY_LEFTBRACKET
  | KEY_BACKSLASH
  | KEY_RIGHTBRACKET
  | KEY_CARET
  | KEY_UNDERSCORE
  | KEY_BACKQUOTE
  | KEY_a
  | KEY_b
  | KEY_c
  | KEY_d
  | KEY_e
  | KEY_f
  | KEY_g
  | KEY_h
  | KEY_i
  | KEY_j
  | KEY_k
  | KEY_l
  | KEY_m
  | KEY_n
  | KEY_o
  | KEY_p
  | KEY_q
  | KEY_r
  | KEY_s
  | KEY_t
  | KEY_u
  | KEY_v
  | KEY_w
  | KEY_x
  | KEY_y
  | KEY_z
  | KEY_DELETE
  (* End of ASCII mapped keysyms *)

  (* International keyboard syms *)
  | KEY_WORLD_0
  | KEY_WORLD_1
  | KEY_WORLD_2
  | KEY_WORLD_3
  | KEY_WORLD_4
  | KEY_WORLD_5
  | KEY_WORLD_6
  | KEY_WORLD_7
  | KEY_WORLD_8
  | KEY_WORLD_9
  | KEY_WORLD_10
  | KEY_WORLD_11
  | KEY_WORLD_12
  | KEY_WORLD_13
  | KEY_WORLD_14
  | KEY_WORLD_15
  | KEY_WORLD_16
  | KEY_WORLD_17
  | KEY_WORLD_18
  | KEY_WORLD_19
  | KEY_WORLD_20
  | KEY_WORLD_21
  | KEY_WORLD_22
  | KEY_WORLD_23
  | KEY_WORLD_24
  | KEY_WORLD_25
  | KEY_WORLD_26
  | KEY_WORLD_27
  | KEY_WORLD_28
  | KEY_WORLD_29
  | KEY_WORLD_30
  | KEY_WORLD_31
  | KEY_WORLD_32
  | KEY_WORLD_33
  | KEY_WORLD_34
  | KEY_WORLD_35
  | KEY_WORLD_36
  | KEY_WORLD_37
  | KEY_WORLD_38
  | KEY_WORLD_39
  | KEY_WORLD_40
  | KEY_WORLD_41
  | KEY_WORLD_42
  | KEY_WORLD_43
  | KEY_WORLD_44
  | KEY_WORLD_45
  | KEY_WORLD_46
  | KEY_WORLD_47
  | KEY_WORLD_48
  | KEY_WORLD_49
  | KEY_WORLD_50
  | KEY_WORLD_51
  | KEY_WORLD_52
  | KEY_WORLD_53
  | KEY_WORLD_54
  | KEY_WORLD_55
  | KEY_WORLD_56
  | KEY_WORLD_57
  | KEY_WORLD_58
  | KEY_WORLD_59
  | KEY_WORLD_60
  | KEY_WORLD_61
  | KEY_WORLD_62
  | KEY_WORLD_63
  | KEY_WORLD_64
  | KEY_WORLD_65
  | KEY_WORLD_66
  | KEY_WORLD_67
  | KEY_WORLD_68
  | KEY_WORLD_69
  | KEY_WORLD_70
  | KEY_WORLD_71
  | KEY_WORLD_72
  | KEY_WORLD_73
  | KEY_WORLD_74
  | KEY_WORLD_75
  | KEY_WORLD_76
  | KEY_WORLD_77
  | KEY_WORLD_78
  | KEY_WORLD_79
  | KEY_WORLD_80
  | KEY_WORLD_81
  | KEY_WORLD_82
  | KEY_WORLD_83
  | KEY_WORLD_84
  | KEY_WORLD_85
  | KEY_WORLD_86
  | KEY_WORLD_87
  | KEY_WORLD_88
  | KEY_WORLD_89
  | KEY_WORLD_90
  | KEY_WORLD_91
  | KEY_WORLD_92
  | KEY_WORLD_93
  | KEY_WORLD_94
  | KEY_WORLD_95

  (* Numeric keypad *)
  | KEY_KP0
  | KEY_KP1
  | KEY_KP2
  | KEY_KP3
  | KEY_KP4
  | KEY_KP5
  | KEY_KP6
  | KEY_KP7
  | KEY_KP8
  | KEY_KP9
  | KEY_KP_PERIOD
  | KEY_KP_DIVIDE
  | KEY_KP_MULTIPLY
  | KEY_KP_MINUS
  | KEY_KP_PLUS
  | KEY_KP_ENTER
  | KEY_KP_EQUALS

  (* Arrows + Home/End pad *)
  | KEY_UP
  | KEY_DOWN
  | KEY_RIGHT
  | KEY_LEFT
  | KEY_INSERT
  | KEY_HOME
  | KEY_END
  | KEY_PAGEUP
  | KEY_PAGEDOWN

  (* Function keys *)
  | KEY_F1
  | KEY_F2
  | KEY_F3
  | KEY_F4
  | KEY_F5
  | KEY_F6
  | KEY_F7
  | KEY_F8
  | KEY_F9
  | KEY_F10
  | KEY_F11
  | KEY_F12
  | KEY_F13
  | KEY_F14
  | KEY_F15
      
  (* Key state modifier keys *)
  | KEY_NUMLOCK
  | KEY_CAPSLOCK
  | KEY_SCROLLOCK
  | KEY_RSHIFT
  | KEY_LSHIFT
  | KEY_RCTRL
  | KEY_LCTRL
  | KEY_RALT
  | KEY_LALT
  | KEY_RMETA
  | KEY_LMETA
  | KEY_LSUPER		(* Left "Windows" key *)
  | KEY_RSUPER		(* Right "Windows" key *)
  | KEY_MODE		(* "Alt Gr" key *)
     
   (* Miscellaneous function keys *)
  | KEY_HELP
  | KEY_PRINT
  | KEY_SYSREQ
  | KEY_BREAK
  | KEY_MENU
  | KEY_POWER		(* Power Macintosh power key *)
  | KEY_EURO		(* Some european keyboards *)

type key_state = 
    KEY_STATE_PRESSED
  | KEY_STATE_RELEASED

type button =
    BUTTON_LEFT
  | BUTTON_MIDDLE
  | BUTTON_RIGHT

type button_state =
    BUTTON_STATE_PRESSED 
  | BUTTON_STATE_RELEASED

(*1 Definition of the event callbacks *)

(* Keyboard event called with the activated key, its state and the 
   coordinates of the mouse pointer *)
type keyboard_event_func = key -> key_state -> int -> int -> unit

(* Mouse button event called with the activated button, its state and 
   the coordinates of the mouse pointer *)
type mouse_event_func = button -> button_state -> int -> int -> unit

(* Mouse motion event called with the coordinates of the mouse pointer *)
type mousemotion_event_func = int -> int -> unit

type idle_event_func = unit -> unit

(*1 Functions for setting the current event callbacks *)

val set_keyboard_event_func : keyboard_event_func -> unit
val set_mouse_event_func : mouse_event_func -> unit
val set_mousemotion_event_func : mousemotion_event_func -> unit
val set_idle_event_func : idle_event_func -> unit

(*1 Asynchronous functions for getting status of input devices *)

val is_key_pressed : key -> bool
val is_button_pressed : button -> bool
val get_mouse_position : unit -> int * int

(*1 Misc *)

(* Set the new position of the mouse cursor and generate a mouse motion
   event *)
val set_mouse_position : int -> int -> unit

(*1 Event loop *)

val start_event_loop : unit -> unit
val exit_event_loop : unit -> unit

val char_of_key : key -> char


type event_type = 
  | EVENT_NOEVENT
  | EVENT_ACTIVEEVENT
  | EVENT_KEYDOWN
  | EVENT_KEYUP
  | EVENT_MOUSEMOTION
  | EVENT_MOUSEBUTTONDOWN
  | EVENT_MOUSEBUTTONUP
  | EVENT_JOYAXISMOTION
  | EVENT_JOYBALLMOTION
  | EVENT_JOYHATMOTION
  | EVENT_JOYBUTTONDOWN
  | EVENT_JOYBUTTONUP
  | EVENT_QUIT
  | EVENT_SYSWMEVENT
  | EVENT_EVENT_RESERVEDA
  | EVENT_EVENT_RESERVEDB
  | EVENT_VIDEORESIZE
  | EVENT_VIDEOEXPOSE
  | EVENT_EVENT_RESERVED2
  | EVENT_EVENT_RESERVED3
  | EVENT_EVENT_RESERVED4
  | EVENT_EVENT_RESERVED5
  | EVENT_EVENT_RESERVED6
  | EVENT_EVENT_RESERVED7
  | EVENT_USEREVENT

val wait : unit -> unit
val pump : unit -> unit
val poll : unit -> int
val evt_type : unit -> event_type
val key_sym : unit -> key
