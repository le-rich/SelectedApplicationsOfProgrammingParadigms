
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | TRUE
    | TIMES
    | THEN
    | RPAR
    | PLUS
    | OR
    | NOT
    | MINUS
    | LT
    | LPAR
    | LET
    | INT of (
# 8 "parser.mly"
       (int)
# 22 "parser.ml"
  )
    | IN
    | IF
    | ID of (
# 7 "parser.mly"
       (string)
# 29 "parser.ml"
  )
    | GT
    | FUN
    | FALSE
    | EQ
    | EOF
    | END
    | ELSE
    | DIVIDE
    | BANG
    | ARROW
    | AND
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState56
  | MenhirState52
  | MenhirState50
  | MenhirState49
  | MenhirState48
  | MenhirState46
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState41
  | MenhirState40
  | MenhirState39
  | MenhirState38
  | MenhirState37
  | MenhirState36
  | MenhirState34
  | MenhirState33
  | MenhirState32
  | MenhirState31
  | MenhirState29
  | MenhirState28
  | MenhirState27
  | MenhirState26
  | MenhirState24
  | MenhirState23
  | MenhirState22
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState18
  | MenhirState17
  | MenhirState16
  | MenhirState14
  | MenhirState11
  | MenhirState9
  | MenhirState7
  | MenhirState4
  | MenhirState0

# 1 "parser.mly"
   
	(* header: code copied into generated ml file *)

# 102 "parser.ml"

let rec _menhir_run17 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run19 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | INT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState24 in
        let _menhir_env = _menhir_discard _menhir_env in
        _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run21 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState21 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | MINUS ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run27 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState27 in
        let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | MINUS ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState28
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28)
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | MINUS ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expr) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | MINUS ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_reduce1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (int)
# 422 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s (n : (
# 8 "parser.mly"
       (int)
# 427 "parser.ml"
  )) ->
    let _v : (Ast.expr) = 
# 29 "parser.mly"
                                    ( Int n )
# 432 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 7 "parser.mly"
       (string)
# 482 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 48 "parser.mly"
                                               ( Fun (x, e) )
# 489 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 36 "parser.mly"
                                              ( Prim("*", e1, e2) )
# 540 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18)
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | ELSE | END | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 37 "parser.mly"
                                               ( Prim("+", e1, e2) )
# 587 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : (Ast.expr) = 
# 43 "parser.mly"
                                              ( Prim("<=", e1, e2) )
# 639 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState26
        | ELSE | END | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 38 "parser.mly"
                                               ( Prim("-", e1, e2) )
# 686 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : (Ast.expr) = 
# 41 "parser.mly"
                                              ( Prim(">=", e1 ,e2) )
# 738 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : (Ast.expr) = 
# 44 "parser.mly"
                                              ( Prim("==", e1, e2) )
# 790 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | DIVIDE | ELSE | END | EOF | IN | MINUS | PLUS | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 39 "parser.mly"
                                              ( Prim("/", e1, e2) )
# 835 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34)
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _v : (Ast.expr) = 
# 45 "parser.mly"
                                               ( Prim("!=", e1, e2) )
# 887 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37)
    | MenhirState56 | MenhirState52 | MenhirState48 | MenhirState50 | MenhirState42 | MenhirState44 | MenhirState46 | MenhirState41 | MenhirState16 | MenhirState18 | MenhirState20 | MenhirState40 | MenhirState23 | MenhirState26 | MenhirState39 | MenhirState29 | MenhirState32 | MenhirState34 | MenhirState38 | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _v : (Ast.expr) = 
# 46 "parser.mly"
                                           ( Call (e1, e2) )
# 937 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 40 "parser.mly"
                                            ( Prim(">", e1, e2) )
# 988 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 42 "parser.mly"
                                            ( Prim("<", e1, e2) )
# 1039 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40)
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState41
        | ELSE | END | EOF | IN | RPAR | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (v : (
# 7 "parser.mly"
       (string)
# 1088 "parser.ml"
            ))), _, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr) = 
# 32 "parser.mly"
                                          ( Var v )
# 1094 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState42 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | FUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
            | IF ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | INT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState44 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | FUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | IF ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | INT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45)
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44)
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState46 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((((_menhir_stack, _menhir_s), _, (e : (Ast.expr))), _), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 49 "parser.mly"
                                                          ( If (e, e1, e2) )
# 1263 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46)
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | IN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState48 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | FUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | IF ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | INT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49)
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48)
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | END ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState50 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((((_menhir_stack, _menhir_s), (x : (
# 7 "parser.mly"
       (string)
# 1385 "parser.ml"
            ))), _, (e1 : (Ast.expr))), _), _, (e2 : (Ast.expr))) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 47 "parser.mly"
                                                       ( Let (x, e1, e2) )
# 1394 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState52 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expr))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ast.expr) = 
# 35 "parser.mly"
                                          ( e )
# 1473 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52)
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BANG ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | DIVIDE ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState56 in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (e : (Ast.expr))) = _menhir_stack in
            let _2 = () in
            let _v : (Ast.expr option) = 
# 24 "parser.mly"
                                       ( Some e )
# 1502 "parser.ml"
             in
            _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v
        | EQ ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | GT ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | LT ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | MINUS ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | PLUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState45 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState19 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState17 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) = 
# 33 "parser.mly"
                                  ( Bool (true) )
# 1705 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (
# 8 "parser.mly"
       (int)
# 1722 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (Ast.expr) = 
# 30 "parser.mly"
                                       ( Int (- n) )
# 1729 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | FUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | IF ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | INT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (int)
# 1823 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce1 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (string)
# 1861 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | FUN ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | ID _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | IF ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
        | LET ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | LPAR ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | MINUS ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState11
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11)
    | BANG | DIVIDE | ELSE | END | EOF | FALSE | FUN | GT | ID _ | IF | IN | INT _ | LET | LPAR | LT | MINUS | PLUS | RPAR | THEN | TIMES | TRUE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (v : (
# 7 "parser.mly"
       (string)
# 1900 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Ast.expr) = 
# 31 "parser.mly"
                                   ( Var v )
# 1905 "parser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | FUN ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | ID _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | IF ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | INT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
            | LET ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | LPAR ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | MINUS ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState14
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ast.expr) = 
# 34 "parser.mly"
                                   ( Bool (false) )
# 1975 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_prog : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expr option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_1 : (Ast.expr option)) = _v in
    Obj.magic _1

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and prog : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr option) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EOF ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState0 in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = () in
        let _v : (Ast.expr option) = 
# 25 "parser.mly"
                                  ( None )
# 2018 "parser.ml"
         in
        _menhir_goto_prog _menhir_env _menhir_stack _menhir_s _v
    | FALSE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LET ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAR ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MINUS ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 2047 "parser.ml"
