/*
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
 */

/* $Id: common.h,v 1.4 2002/06/26 11:05:58 oliv__a Exp $ */

#ifndef __COMMON_H__
#define __COMMON_H__

#include <caml/mlvalues.h>

/*

  Caml list manipulations

  Grabbed in ocamlsdl-0.3/sdl_stub.c 1.8 (2000/09/25)
  made by Jean-Christophe FILLIATRE 
*/

extern value nil(void);

extern value cons(value x,value l);

extern int is_nil(value l);

extern int is_not_nil(value l);

extern value hd(value l); 

extern value tl(value l);


/* 
   Polymorphic variants <-> C ints conversion

   taken from LablGTK
*/
typedef struct { value key; int data; } lookup_info;
value ml_lookup_from_c (lookup_info *table, int data);
int ml_lookup_to_c (lookup_info *table, value key);


/*
   Optional arguments
*/
#define Opt_arg(v, conv, def) (Is_block(v) ? conv(Field((v),0)) : (def))

#endif /* __COMMON_H__ */
