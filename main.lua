return (function(...)
local _8={}
for _zy4=0,255 do _8[_zy4]=string.char(_zy4) end
local _9={}
do
  local _nqc="MaSLZR0-irFHnY87pszuxlDjyPXTBfk5" .. "h3Qgt1NW4OmVdKC62GeAEbqocwUI_vJ9"
  for _zy4=1,#_nqc do _9[string.byte(_nqc,_zy4)]=_zy4-1 end
end
local function _46(s)
  local _568,_4pg={},0
  local byte,floor=string.byte,math.floor
  local len=#s
  local _zy4=1
  while _zy4+3<=len do
    local c1,c2,c3,c4=byte(s,_zy4,_zy4+3)
    local _nqc,b,_4fg2,_z78=_9[c1],_9[c2],_9[c3],_9[c4]
    if _nqc==nil or b==nil or _4fg2==nil or _z78==nil then break end
    local _rod=_nqc*262144+b*4096+_4fg2*64+_z78
    _568[_4pg+1]=_8[floor(_rod/65536)]
    _568[_4pg+2]=_8[floor(_rod/256)%256]
    _568[_4pg+3]=_8[_rod%256]
    _4pg=_4pg+3
    _zy4=_zy4+4
  end
  if _zy4+3<=len then
    _568,_4pg={},0
    local _v3c,_fsw=0,0
    for j=1,len do
      local _rod=_9[byte(s,j)]
      if _rod then
        _v3c=_v3c*64+_rod
        _fsw=_fsw+6
        if _fsw>=8 then
          _fsw=_fsw-8
          local _z78=2^_fsw
          _4pg=_4pg+1
          _568[_4pg]=_8[floor(_v3c/_z78)%256]
          _v3c=_v3c%_z78
        end
      end
    end
    return table.concat(_568)
  end
  local _v3c,_fsw=0,0
  for j=_zy4,len do
    local _rod=_9[byte(s,j)]
    if _rod then
      _v3c=_v3c*64+_rod
      _fsw=_fsw+6
      if _fsw>=8 then
        _fsw=_fsw-8
        local _z78=2^_fsw
        _4pg=_4pg+1
        _568[_4pg]=_8[floor(_v3c/_z78)%256]
        _v3c=_v3c%_z78
      end
    end
  end
  return table.concat(_568)
end
local _18={}
do
  local _g7m="\161\254|\203\166\188\229a\141\201v\237\\'[\199\028%o\180\190\168=h8\016\160\194D\230C\209\196\027\003\031`\239\023\139V\242\192B\"s2\150\008\177{\181\138Z\251\024\221q\022\153\159\244\225 \205\233\009\195:7\004y9w\214\144O\236\012\183\163\250\007\174\185G\002\169\1785r\030\219\207\143m*\146\200\001\187\231g\252\152\2133\015\170\006x6#\136\206\r\020Uf\1300\147\155(\2261\158\176IQ\179\238\029\210\211z\017\134\148\131_\245A\234\241\246\193~\253eFb?4\173\243T!\240\021\208\140\184\248\232\218<l\018\005\137\197>&k\186\247\156\198$H+\235\129\149@p\191\224,\216\157\212\249\154PYJ\127\222\223/]d\165n\133R\167\217\164\182N\145\255S\132}M\175;\220\162\171\142i\026\000\011\014\n-\228\202\128\135u)\019KLE\025\215\204\151Wt\189\227\172X^jc."
  for _zy4=1,256 do _18[string.byte(_g7m,_zy4)]=_zy4-1 end
end
local function _0(S)
  local _jk9,_xqm=154,75
  local _568,_fi1={},0
  local P=197 A=245 L=85
  local K={124,158,181,249,166,142,218,140,106,222,252,231,76,181,210,105,112,62,65,148,150,62,40,173,127,119,174,191,72,93,230,91}
  local byte=string.byte
  for _zy4=1,#S do
    _jk9=(P*_jk9+A)%256
    local _4fg2=byte(S,_zy4)
    local _klo=(_18[_4fg2]-_jk9-K[((_zy4-1)%32)+1]-_zy4*113-L-_xqm)%256
    _xqm=_4fg2
    _fi1=(_fi1*33+_klo)%4294967296
    _568[_zy4]=_8[_klo]
  end
  return table.concat(_568),_fi1
end
local function _zj(_jc, _ud, ...)
local _rp = table.unpack or unpack
local _fy, _qz, _bb, _mc = type, select, error, tostring
local _xd, _if, _tg, _ei, _pj = getmetatable, rawget, getrawmetatable, pcall, next
local _al = math.floor
local _lm, _wn = coroutine and coroutine.wrap, coroutine and coroutine.yield
local function _cr(...) return { n = _qz('#', ...), ... } end
local _nd, _ye = getfenv, setfenv
local kmEnvOn = _fy(_nd) == 'function'
local kmSetOn = _fy(_ye) == 'function'
local _zu
if _fy(setmetatable) == 'function' then
local _cc, _mu = _ei(setmetatable, {}, {__mode='kv'})
if _cc and _fy(_mu) == 'table' then _zu = _mu end
end
local function _vm(_do,_op,_zq)
return _lm(function()
for _iv1,_iv2 in _do,_op,_zq do _wn(_iv1,_iv2) end
end)
end
local _ns
_ns = function(_rw, _cj, _jv, _ud, _uh)
while true do
local f9m0w8, _pb, f7wi47 = _rw.f9m0w8, _rw.k, _rw.f7wi47
local _zf = _cj
local _im = _rw.f32hkk
local _zb, _kd = nil, 0
if _rw.f5v0an then
_zb = {}
local _rl = _cj.n or #_cj
for _gv = _im + 1, _rl do _kd = _kd + 1; _zb[_kd] = _cj[_gv] end
else
local _rl = _cj.n or #_cj
for _gv = _im + 1, _rl do _zf[_gv] = nil end
end
local _ve = _rw.f8eht7 + 8
local _gg = 1
while true do
local _rh = f9m0w8[_gg]
local _do = f9m0w8[_gg + 1]
if _rh == 47 then
_zf[_do] = _zf[f9m0w8[_gg + 2]]
_gg = _gg + 4
elseif _rh == 44 then
local _op, _zq = f9m0w8[_gg + 2], f9m0w8[_gg + 3]
local _vt = _zf[_do]
local n = (_op == 0) and (_ve - _do) or (_op - 1)
if kmEnvOn and _vt == _nd and (n == 0 or (n >= 1 and _zf[_do + 1] == 1)) then
_vt = function() return _ud end
elseif kmSetOn and _vt == _ye and n >= 2 and _zf[_do + 1] == 1 and _fy(_zf[_do + 2]) == 'table' then
_vt = function(_, _ra)
_ye(_uh, _ra)
_ud = _ra
local kmOwnState = _zu and _zu[_uh]
if kmOwnState then kmOwnState[3] = _ra end
return _uh
end
end
if _zq == 2 then
if n == 0 then _zf[_do] = _vt()
elseif n == 1 then _zf[_do] = _vt(_zf[_do + 1])
elseif n == 2 then _zf[_do] = _vt(_zf[_do + 1], _zf[_do + 2])
elseif n == 3 then _zf[_do] = _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3])
else
local _nz = {}
for _gv = 1, n do _nz[_gv] = _zf[_do + _gv] end
_zf[_do] = _vt(_rp(_nz, 1, n))
end
elseif _zq == 1 then
if n == 0 then _vt()
elseif n == 1 then _vt(_zf[_do + 1])
elseif n == 2 then _vt(_zf[_do + 1], _zf[_do + 2])
elseif n == 3 then _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3])
else
local _nz = {}
for _gv = 1, n do _nz[_gv] = _zf[_do + _gv] end
_vt(_rp(_nz, 1, n))
end
elseif _zq == 3 then
if n == 0 then _zf[_do], _zf[_do + 1] = _vt()
elseif n == 1 then _zf[_do], _zf[_do + 1] = _vt(_zf[_do + 1])
elseif n == 2 then _zf[_do], _zf[_do + 1] = _vt(_zf[_do + 1], _zf[_do + 2])
elseif n == 3 then _zf[_do], _zf[_do + 1] = _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3])
elseif n == 4 then _zf[_do], _zf[_do + 1] = _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3], _zf[_do + 4])
else
local _nz = {}
for _gv = 1, n do _nz[_gv] = _zf[_do + _gv] end
_zf[_do], _zf[_do + 1] = _vt(_rp(_nz, 1, n))
end
elseif _zq == 4 then
if n == 0 then _zf[_do], _zf[_do + 1], _zf[_do + 2] = _vt()
elseif n == 1 then _zf[_do], _zf[_do + 1], _zf[_do + 2] = _vt(_zf[_do + 1])
elseif n == 2 then _zf[_do], _zf[_do + 1], _zf[_do + 2] = _vt(_zf[_do + 1], _zf[_do + 2])
elseif n == 3 then _zf[_do], _zf[_do + 1], _zf[_do + 2] = _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3])
elseif n == 4 then _zf[_do], _zf[_do + 1], _zf[_do + 2] = _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3], _zf[_do + 4])
else
local _nz = {}
for _gv = 1, n do _nz[_gv] = _zf[_do + _gv] end
_zf[_do], _zf[_do + 1], _zf[_do + 2] = _vt(_rp(_nz, 1, n))
end
elseif _zq == 5 then
if n == 0 then _zf[_do], _zf[_do + 1], _zf[_do + 2], _zf[_do + 3] = _vt()
elseif n == 1 then _zf[_do], _zf[_do + 1], _zf[_do + 2], _zf[_do + 3] = _vt(_zf[_do + 1])
elseif n == 2 then _zf[_do], _zf[_do + 1], _zf[_do + 2], _zf[_do + 3] = _vt(_zf[_do + 1], _zf[_do + 2])
elseif n == 3 then _zf[_do], _zf[_do + 1], _zf[_do + 2], _zf[_do + 3] = _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3])
elseif n == 4 then _zf[_do], _zf[_do + 1], _zf[_do + 2], _zf[_do + 3] = _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3], _zf[_do + 4])
else
local _nz = {}
for _gv = 1, n do _nz[_gv] = _zf[_do + _gv] end
_zf[_do], _zf[_do + 1], _zf[_do + 2], _zf[_do + 3] = _vt(_rp(_nz, 1, n))
end
else
local _yl
if n == 0 then _yl = _cr(_vt())
elseif n == 1 then _yl = _cr(_vt(_zf[_do + 1]))
elseif n == 2 then _yl = _cr(_vt(_zf[_do + 1], _zf[_do + 2]))
elseif n == 3 then _yl = _cr(_vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3]))
elseif n == 4 then _yl = _cr(_vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3], _zf[_do + 4]))
else
local _nz = {}
for _gv = 1, n do _nz[_gv] = _zf[_do + _gv] end
_yl = _cr(_vt(_rp(_nz, 1, n)))
end
if _zq == 0 then
local _uo = _yl.n
for _gv = 1, _uo do _zf[_do + _gv - 1] = _yl[_gv] end
if _uo == 0 then _zf[_do] = nil end
_ve = _do + _uo - 1
else
local _jn = _zq - 1
for _gv = 1, _jn do _zf[_do + _gv - 1] = _yl[_gv] end
end
end
_gg = _gg + 4
elseif _rh == 2 then
_zf[_do] = _ud[_pb[f9m0w8[_gg + 2]]]
_gg = _gg + 4
elseif _rh == 32 then
_zf[_do] = _zf[f9m0w8[_gg + 2]][1]
_gg = _gg + 4
elseif _rh == 13 then
local _op = f9m0w8[_gg + 2]
local _nz = _zf[_op]
if _op >= 4096 then _nz = _pb[_op - 4096] end
local _zq = f9m0w8[_gg + 3]
if _zq >= 4096 then _zq = _pb[_zq - 4096] else _zq = _zf[_zq] end
_zf[_do] = _nz[_zq]
_gg = _gg + 4
elseif _rh == 35 then
local _nz = _zf[_do]
_nz[1] = _zf[f9m0w8[_gg + 2]]
_gg = _gg + 4
elseif _rh == 1 then
_zf[_do] = _jv[f9m0w8[_gg + 2]][1]
_gg = _gg + 4
elseif _rh == 37 then
_zf[_do] = {}
_gg = _gg + 4
elseif _rh == 17 then
if _zf[_do] then _gg = _gg + 4 else _gg = _gg + f9m0w8[_gg + 2] * 4 end
elseif _rh == 34 then
local _nz = _zf[_do]
local _op, _zq = f9m0w8[_gg + 2], f9m0w8[_gg + 3]
if _op >= 4096 then _op = _pb[_op - 4096] else _op = _zf[_op] end
if _zq >= 4096 then _zq = _pb[_zq - 4096] else _zq = _zf[_zq] end
_nz[_op] = _zq
_gg = _gg + 4
elseif _rh == 19 then
_zf[_do] = _pb[f9m0w8[_gg + 2]]
_gg = _gg + 4
elseif _rh == 30 or _rh == 5 or _rh == 14 or _rh == 31 or _rh == 43 or _rh == 12 then
local _op, _zq = f9m0w8[_gg + 2], f9m0w8[_gg + 3]
if _op >= 4096 then _op = _pb[_op - 4096] else _op = _zf[_op] end
if _zq >= 4096 then _zq = _pb[_zq - 4096] else _zq = _zf[_zq] end
if _rh == 30 then _zf[_do] = (_op == _zq)
elseif _rh == 5 then _zf[_do] = (_op ~= _zq)
elseif _rh == 14 then _zf[_do] = (_op < _zq)
elseif _rh == 31 then _zf[_do] = (_op <= _zq)
elseif _rh == 43 then _zf[_do] = (_op > _zq)
else _zf[_do] = (_op >= _zq) end
_gg = _gg + 4
elseif _rh == 39 then
_gg = _gg + _do * 4
elseif _rh == 45 then
local _op = f9m0w8[_gg + 2]
local n = (_op == 0) and (_ve - _do + 1) or (_op - 1)
if n <= 0 then return
elseif n == 1 then return _zf[_do]
elseif n == 2 then return _zf[_do], _zf[_do + 1]
elseif n == 3 then return _zf[_do], _zf[_do + 1], _zf[_do + 2]
elseif n == 4 then return _zf[_do], _zf[_do + 1], _zf[_do + 2], _zf[_do + 3] end
local _nz = {}
for _gv = 1, n do _nz[_gv] = _zf[_do + _gv - 1] end
return _rp(_nz, 1, n)
elseif _rh == 25 then
local _xv = f7wi47[f9m0w8[_gg + 2]]
local fztxs = {}
local _bt = _xv.fztxs
for _gv = 1, #_bt do
local _mu = _bt[_gv]
if _mu.f6ypjo then fztxs[_gv] = _zf[_mu.f4ejot] else fztxs[_gv] = _jv[_mu.f4ejot] end
end
local _vx = {_xv, fztxs, _ud}
local _kw
_kw = function(...)
return _ns(_vx[1], _cr(...), _vx[2], _vx[3], _kw)
end
if kmSetOn then _ye(_kw, _vx[3]) end
if _zu then _zu[_kw] = _vx end
_zf[_do] = _kw
_gg = _gg + 4
elseif _rh == 3 then
local _mn, _xo, _iq = _zf[_do] + _zf[_do + 2], _zf[_do + 1], _zf[_do + 2]
_zf[_do] = _mn
local _tr
if _iq > 0 then _tr = _mn <= _xo
else _tr = _mn >= _xo end
if _tr then _gg = _gg + f9m0w8[_gg + 2] * 4 else _gg = _gg + 4 end
elseif _rh == 46 then
local _op = f9m0w8[_gg + 2]
if _op >= 4096 then _op = _pb[_op - 4096] else _op = _zf[_op] end
_zf[_do] = #_op
_gg = _gg + 4
elseif _rh == 16 then
_zf[_do] = (f9m0w8[_gg + 2] ~= 0)
_gg = _gg + 4
elseif _rh == 36 then
_zf[_do] = {}
_gg = _gg + 4
elseif _rh == 40 then
local _op, _zq = f9m0w8[_gg + 2], f9m0w8[_gg + 3]
if _op >= 4096 then _op = _pb[_op - 4096] else _op = _zf[_op] end
if _zq >= 4096 then _zq = _pb[_zq - 4096] else _zq = _zf[_zq] end
_zf[_do] = _op + _zq
_gg = _gg + 4
elseif _rh == 4 then
if _zf[_do] then _gg = _gg + f9m0w8[_gg + 2] * 4 else _gg = _gg + 4 end
elseif _rh == 10 then
local _mn, _xo, _iq = _zf[_do], _zf[_do + 1], _zf[_do + 2]
local _tr
if _iq > 0 then _tr = _mn <= _xo
else _tr = _mn >= _xo end
if _tr then _gg = _gg + 4 else _gg = _gg + f9m0w8[_gg + 2] * 4 end
elseif _rh == 20 then
for _gv = 0, 2 do
local v = _zf[_do + _gv]
if _fy(v) ~= 'number' then
local _qk, _bm = false, nil
if _fy(v) == 'string' then _qk, _bm = _ei(function() return v + 0 end) end
if not _qk then
local _mu = (_gv == 0 and string.char(105,110,105,116,105,97,108,32,118,97,108,117,101) or _gv == 1 and string.char(108,105,109,105,116) or string.char(115,116,101,112))
_bb(string.char(105,110,118,97,108,105,100,32,39,102,111,114,39,32) .. _mu .. string.char(32,40,110,117,109,98,101,114,32,101,120,112,101,99,116,101,100,44,32,103,111,116,32) .. _fy(v) .. ')', 0)
end
_zf[_do + _gv] = _bm
end
end
_gg = _gg + 4
elseif _rh == 33 then
_zf[_do] = f9m0w8[_gg + 2]
_gg = _gg + 4
elseif _rh == 26 then
_jv[_do][1] = _zf[f9m0w8[_gg + 2]]
_gg = _gg + 4
elseif _rh == 41 or _rh == 29 or _rh == 42 or _rh == 18 or _rh == 28 then
local _op, _zq = f9m0w8[_gg + 2], f9m0w8[_gg + 3]
if _op >= 4096 then _op = _pb[_op - 4096] else _op = _zf[_op] end
if _zq >= 4096 then _zq = _pb[_zq - 4096] else _zq = _zf[_zq] end
if _rh == 41 then _zf[_do] = _op - _zq
elseif _rh == 29 then _zf[_do] = _op * _zq
elseif _rh == 42 then _zf[_do] = _op / _zq
elseif _rh == 18 then _zf[_do] = _op % _zq
else _zf[_do] = _op ^ _zq end
_gg = _gg + 4
elseif _rh == 23 then
local _op = f9m0w8[_gg + 2]
if _op == 0 then
for _gv = 1, _kd do _zf[_do + _gv - 1] = _zb[_gv] end
_ve = _do + _kd - 1
else
local n = _op - 1
for _gv = 1, n do _zf[_do + _gv - 1] = _zb[_gv] end
end
_gg = _gg + 4
elseif _rh == 8 then
local _op = f9m0w8[_gg + 2]
local _vt = _zf[_do]
local n = (_op == 0) and (_ve - _do) or (_op - 1)
if kmEnvOn and _vt == _nd and (n == 0 or (n >= 1 and _zf[_do + 1] == 1)) then
_vt = function() return _ud end
elseif kmSetOn and _vt == _ye and n >= 2 and _zf[_do + 1] == 1 and _fy(_zf[_do + 2]) == 'table' then
_vt = function(_, _ra)
_ye(_uh, _ra)
_ud = _ra
local kmOwnState = _zu and _zu[_uh]
if kmOwnState then kmOwnState[3] = _ra end
return _uh
end
end
local _vx = _zu and _zu[_vt]
if _vx then
local _gz = {n=n}
for _gv = 1, n do _gz[_gv] = _zf[_do + _gv] end
if _vx[3] then _ud = _vx[3] end
_rw, _cj, _jv, _uh = _vx[1], _gz, _vx[2], _vt
break
end
if n == 0 then return _vt()
elseif n == 1 then return _vt(_zf[_do + 1])
elseif n == 2 then return _vt(_zf[_do + 1], _zf[_do + 2])
elseif n == 3 then return _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3])
elseif n == 4 then return _vt(_zf[_do + 1], _zf[_do + 2], _zf[_do + 3], _zf[_do + 4]) end
local _gz = {}
for _gv = 1, n do _gz[_gv] = _zf[_do + _gv] end
return _vt(_rp(_gz, 1, n))
elseif _rh == 7 then
local _op = _zf[f9m0w8[_gg + 2]]
local _zq = f9m0w8[_gg + 3]
if _zq >= 4096 then _zq = _pb[_zq - 4096] else _zq = _zf[_zq] end
_zf[_do] = _op[_zq]
if _zf[_do] == nil then _bb(string.char(97,116,116,101,109,112,116,32,116,111,32,99,97,108,108,32,109,105,115,115,105,110,103,32,109,101,116,104,111,100,32,39) .. _zq .. string.char(39,32,111,102,32) .. _fy(_op), 0) end
_zf[_do + 1] = _op
_gg = _gg + 4
elseif _rh == 24 then
local _op = f9m0w8[_gg + 2]
for _gv = _do, _do + _op - 1 do _zf[_gv] = nil end
_gg = _gg + 4
elseif _rh == 27 then
local _op, _zq = f9m0w8[_gg + 2], f9m0w8[_gg + 3]
local _cy = _zf[_zq]
for _gv = _zq - 1, _op, -1 do _cy = _zf[_gv] .. _cy end
_zf[_do] = _cy
_gg = _gg + 4
elseif _rh == 22 then
local _op = f9m0w8[_gg + 2]
if _op >= 4096 then _op = _pb[_op - 4096] else _op = _zf[_op] end
_zf[_do] = not _op
_gg = _gg + 4
elseif _rh == 9 then
local _nz = _zf[_do]
local n = f9m0w8[_gg + 3] - 1
local _gv = f9m0w8[_gg + 2]
while _gv <= _ve do n = n + 1; _nz[n] = _zf[_gv]; _gv = _gv + 1 end
_gg = _gg + 4
elseif _rh == 38 then
local _op = f9m0w8[_gg + 2]
if _op >= 4096 then _op = _pb[_op - 4096] else _op = _zf[_op] end
_zf[_do] = -_op
_gg = _gg + 4
elseif _rh == 11 then
local _vt = _zf[_do]
if _fy(_vt) ~= 'function' then
local _nz = _xd(_vt)
local getter = _tg
if _fy(getter) ~= 'function' then getter = _ud['getrawmetatable'] end
if _nz ~= nil and _fy(getter) == 'function' then
local ok, actual = _ei(getter, _vt)
if ok and _fy(actual) == 'table' then _nz = actual end
end
local _op, _zq
if _fy(_nz) == 'table' then _op = _if(_nz, '__iter'); _zq = _if(_nz, '__call') end
if _op ~= nil then
_zf[_do], _zf[_do + 1], _zf[_do + 2] = _op(_vt)
elseif _nz ~= nil and _fy(_nz) ~= 'table' then
if f9m0w8[_gg + 2] > 2 then _bb('E43', 0) end
_zf[_do], _zf[_do + 1], _zf[_do + 2] = _vm(_vt, _zf[_do + 1], _zf[_do + 2]), nil, nil
elseif _fy(_vt) == 'table' and (_nz == nil or (_fy(_nz) == 'table' and _zq == nil)) then
_zf[_do], _zf[_do + 1], _zf[_do + 2] = _pj, _vt, nil
elseif _nz == nil or (_fy(_nz) == 'table' and _zq == nil) then
_bb(string.char(97,116,116,101,109,112,116,32,116,111,32,105,116,101,114,97,116,101,32,111,118,101,114,32,97,32) .. _fy(_vt) .. string.char(32,118,97,108,117,101), 0)
end
end
_gg = _gg + 4
elseif _rh == 15 then
local _nz = _zf[_do]
local _op, _zq = f9m0w8[_gg + 2], f9m0w8[_gg + 3]
if _op == 0 then _op = _ve - _do end
local _nk = _zq - 1
for _gv = 1, _op do _nz[_nk + _gv] = _zf[_do + _gv] end
_gg = _gg + 4
elseif _rh == 6 then
_ud[_pb[_do]] = _zf[f9m0w8[_gg + 2]]
_gg = _gg + 4
elseif _rh == 21 then
local _op, _zq = f9m0w8[_gg + 2], f9m0w8[_gg + 3]
if _op >= 4096 then _op = _pb[_op - 4096] else _op = _zf[_op] end
if _zq >= 4096 then _zq = _pb[_zq - 4096] else _zq = _zf[_zq] end
_zf[_do] = _al(_op / _zq)
_gg = _gg + 4
else
_bb(('E'..kmToString(_rh)), 0)
end
end
end
end
local _fj = function() end
if _fy(_ye) == 'function' then _ei(_ye, _fj, _ud) end
return _ns(_jc, _cr(...), {}, _ud, _fj)
end
local function _kl(_cy, _sx, _ff, _et)
_sx = _sx or 1
local _go = type(bit32) == 'table' and bit32.bxor or nil
if type(_go) == 'function' then
local _ds, _ot = pcall(_go, 85, 170)
if not _ds or _ot ~= 255 then _go = nil
else
_ds, _ot = pcall(_go, 0, 0)
if not _ds or _ot ~= 0 then _go = nil end
end
else _go = nil end
if not _go then
_go = function(_do,_zq)
_do=_do%256 _zq=_zq%256
local r,_rw=0,1
for _=1,8 do
local _ya,w=_do%2,_zq%2
if _ya~=w then r=r+_rw end
_do=(_do-_ya)/2 _zq=(_zq-w)/2 _rw=_rw*2
end
return r
end
end
_ff = _ff or 29945
local function _ib()
local _op = string.byte(_cy, _sx)
_sx = _sx + 1
_ff = (_ff * 2800 + 35064) % 65521
local _pb = _ff % 256
local v = _op - _pb
if v < 0 then v = v + 256 end
return v
end
local function _tc()
local n, _qg = 0, 1
while true do
local _op = _ib()
n = n + (_op % 128) * _qg
if _op < 128 then break end
_qg = _qg * 128
end
return n
end
local function _ee()
local n = _tc()
if n % 2 == 1 then return -math.floor((n + 1) / 2) end
return math.floor(n / 2)
end
local function _pf()
local _rw = {}
_rw.f32hkk = _tc()
_rw.f5v0an = (_ib() == 1)
_rw.f8eht7 = _tc()
local _tn = _tc()
_rw.fztxs = {}
for _gv = 1, _tn do
local f6ypjo = (_ib() == 1)
_rw.fztxs[_gv] = { f6ypjo = f6ypjo, f4ejot = _tc() }
end
local _mj = _tc()
_rw.k = {}
for _gv = 1, _mj do
local _hh = _ib()
if _hh == 0 then _rw.k[_gv] = nil
elseif _hh == 1 then _rw.k[_gv] = false
elseif _hh == 2 then _rw.k[_gv] = true
elseif _hh == 5 then
_rw.k[_gv] = _ee()
elseif _hh == 3 or _hh == 4 or _hh == 6 then
local _fq = _tc()
local _wu = {}
local m = 40
for j = 1, _fq do
local _pu = string.byte(_cy, _sx)
_sx = _sx + 1
_ff = (_ff * 2800 + 35064) % 65521
local _aw = _pu - (_ff % 256)
if _aw < 0 then _aw = _aw + 256 end
_wu[j] = _et[_go(_aw, m)]
m = (m * 243 + 239) % 256
end
if _hh == 3 then _rw.k[_gv] = tonumber(table.concat(_wu))
elseif _hh == 6 then
local intlib = integer
if type(intlib) ~= 'table' or type(intlib.fromstring) ~= 'function' then error('E6', 0) end
_rw.k[_gv] = intlib.fromstring(table.concat(_wu))
if _rw.k[_gv] == nil then error('E6', 0) end
else _rw.k[_gv] = table.concat(_wu) end
else
_rw.k[_gv] = nil
end
end
local _bi = _tc()
local _pq, _ep = _tc(), _tc()
_rw.f9m0w8 = {}
if _bi > 0 then
local _lx, _wy, _ha, _sb = _bi, _pq, 0, 1
while _wy ~= 0 do
local _dd = math.floor(_lx / _wy)
_lx, _wy = _wy, _lx - _dd * _wy
_ha, _sb = _sb, _ha - _dd * _sb
end
if _lx ~= 1 then error('E', 0) end
local _oe = _ha % _bi
local _hw = (-_ep * _oe) % _bi
for _gv = 1, _bi do
local _mu = _hw * 4 + 1
_rw.f9m0w8[_mu] = _tc() - (3 + _hw * 187) % 251
_rw.f9m0w8[_mu + 1] = _ee() - (3 + _hw * 187 + 149) % 251
_rw.f9m0w8[_mu + 2] = _ee() - (3 + _hw * 187 + 298) % 251
_rw.f9m0w8[_mu + 3] = _ee() - (3 + _hw * 187 + 447) % 251
_hw = _hw + _oe
if _hw >= _bi then _hw = _hw - _bi end
end
end
local _wj = _tc()
_rw.f7wi47 = {}
for _gv = 1, _wj do _rw.f7wi47[_gv] = _pf() end
return _rw
end
local _xv = _pf()
return _xv, _sx, _ff
end
local _fa1={
"JB0dSqTArSKlSPFhkG-NcvY8ahULYo-K2rXs79LQE2Q3JYMxcH2lIbLiKYM8tcY1dWXfb0oDKwIPiaBMLO9ACXyfZpfeUJbkOgQO3OH8FND7Xc1OvkRf2cyXwtsONWUi8576aIGSmvmH3ZzTbujcOZi0Bf-qz4hY-l6t6f243ZBRp08NI5MPBxjdWMMcOS5c1_Yl1kEuldmITnfoCAWLz3l5cdf4PtrY7tCbpYQDJVCDude3fTDoZrj2pWR3VNPiMFt9uyhPUOT0_QCP4lAVcW1DqW4Vc8dUYo8wALd1sTqUzW5sCcrhRxx3wjvinCgHFft_FEJETYMrvLVWVEwcix6MrYWhOUF-1RCvIIEUih_Kph7QkOZSVCNnDhFUYZsRNEV5KZg9LaQRloVq6oRpFyKofOUwTiM-SPNxoClZ_jFFruqblhlkpHb0yUtoukPEzaVgkubmsu-Us9OWJTGuW3itpqbxg_wzc1y0hbeTzV-vv_yyVfLiuzEJ4Xz6-4NQxSOKVI9fQCla67SGUJBFvK44ezvBSlFRBo88qkFjPCq3oqnekYcMY7giTlazH4Yjnt5CKtpGYuc1lqIgP9L_pjCoxHW-X6bViTgkHNze7Y39IUyT0CIEfQqu-I0KIp4Ni4bikZpaVSvGDapBgzcr9nCy26X0ZXpoGN69DStF20l-B1UOOdsvgtB5iBmbr4QOxaXPbGmBRaKW253htXPcsmXoL_AisjaAZS3o-xQ6mZtgukoJ1KrL31bEnN7qjePF1I_R6gjOei4Qd8P0UBwQYihDQDy4xJvp3U2TqUKuFPeV00iD_RT2wbypvFakV_fnkJoJG4OanFR3nfW1idk98f6x-Bw9wLgnPtkKqf3DmSrZsmm1c_h9aGKAh1hTwXYzwUYe8U3604jlamrsEBuUxQhBEPRLPgltjXN91K8OVL7tH2LxhZxowdJXFfmGCzcarBYQz30JhtoedSn-MaWYrJxCMgUR",
"-jCq6dRy_YEGWtLcXOeLoE3TUE_PEYOWPdqwpqo7PYkkNTpMMaE0hNwWvK618XeMO-NrqfWvyT40jsp_v9o9tjVfFsf9iB5YE2deyv1xTudFCT2k_YEy_qqaX4k0_TsBozaizMLjngE-n_CATLm_VB7gnCVKVi_1rdIMcmoNbPBsuHvV5G_RgdU_muBdOqI6RlBa438Gz0nk5NCaZvnFGWIm45WEhRylSEHLkyHCDlOiXENcEeO-ycp9O_Jr5eTl431Nq3qNDT7OZKScvFvhNC-IFVDTpIVnELx7TKzEa27w5GobIhz1SE-9SSZUejjiHBnzepK-yVHH7J8VWZW-m1FZafDp-vxXCNHemZL2qqSbh0XxCrt_U4fteO3GvAo15gf0XyxibraY6UJv355xl_-WEke98S4hLCm0uqR6VXt2OsoL2FOlIjuryGA1MBCz2sna5r36JkyNwidLlu-8kJtT5C_S53m90GLCiFXYtVK9yQe9lFcix0ecAP64tAK70NAhtCKGntESnrS9AA5QUw4LRL6MW0SIuu6UUowLX8ESkOVFiEdgCghhRz6QV5m3eByuCCRVX6IUS95PpnZRoQeK_xtJsAZSCOuM1lpKw4WOFQne8uK6uUjYjhYnJqz_0r876NMGz_Q9W3kHI_os95GFapH6tc4li93b57snLCNM7psqSX7Uafopj2i4bXFf6Vs1Xr_RzVnjd0zbe5cB9OR6QBL9tgWlTSfAuuYu4RLhTPIZm9bCgHLb3iIuB3AwnGodchqQBsJUMcrsdijBEVHjCFHsBTq2X-GUnEpMx3hr7WGnMvCQN3lTaxakNTxGOWCi3G5s0qpl2EVAzTq0PyhjCjAtImsvCI5RtZ5sqDh1VNnw9-rDaZEO8lfmDiH-94AB_vCywmdAG1fZ_o31yLs85dc9cm4O41hHaDY04UrSw7SS77rzs_0asAdzjG6AmKKq7FS9u3_GyEEL_aC9vKwiB-_T",
"83R1rxooe7B-kndxt7FJ-RnPRpOuvprWctSuHaLIPRwYO2bulvdVo8NJO5YYH9pvDvl1R-Uf1k9v3YFWbxcXwxGiMzoWZQitWOhmwhLcZPfEJf0fgXKheGLSkQd-DLuQSvkzmsAnG41kkFfaEo13BuPBSaOuvjpKoXYNH-wBVSRYHRANTEDE1zakiJdO8-zldRJ0uBI5UMWe6Nemb41a6k3VBlFm6SG_b0-nId-1ILLIIdUi3tKwI8TNuuMUOIzG0AH5L6ULY_I9RKF1uYbh941JmZyvRIb4H0hR400j2X0hZQkyPJPTYYf2QIJ4FZqPrR4oVSSIDzjXqm35QUeQPesXmvNjqiRm7h807WFRTh8jHpPcj-9S68tP3NJOoAknEKT2OyDO-VT6OLfpy3XQiQFp1PvhctBnDo-758ZDj8Gl5GkGYksvujlxP2p1pshXVFS9seU2PVWRXpjQcltg4X1o6SRoH3R-LeSkQOSXDurPyPqxak6xVeRJjarCl9IuxbUomL0XGMflUT-fOyGfioSwAs1dlEfhUfIzewKxpnMuJSV_SR4KiM1s7e6rx9SFFFeBzKd_hhZJ7KSfVJV82jXvB4WIDNzPSd6EvmRqOy-2CMoeCSr_00rM_P_kidNOoFgEfTFuat1h8X_FSUb1DRXUzfu4FDnsvlmjwvMlMQeY4orB8Cd8Xo5zxgO3KKizZKrGBtbT06s80VpoytLJqnpQxxIbTYYbYwVmbRjcrvXMz9_3PhtdJ6kVLfYgeQzo6pJdiDzYeDPSF2LB7YPgXBbCHlnQCF4dipBVYiyQN5CpvYeKKyqBjJEZSimwl1yPIg1OD4VqfXTk0M6Rzl5CQPWv1RttGARkdupmP01XWRLDh-2Y0nkrHHwYio3_BBrpzyeJJjEXgM4VDt0L2ch7P9-pzjj9Pasd_1PuKeyEkHP1NpDpUNWbKMDUDGeKZYny5Q_vrQSBlEUcNIAXtNZoNjs0wE-x",
"2vnYqHIIL2NUTSqbmvqSps3oy0RqhvGEdUN3Aq4fq5It8JMsdeJ1ZrTCGXxIM74Rkmkh9D3WJT_PTsdKfeRsv279U_EwHy861M00hE0PUAaVglvKpiYzrZm8O7I2OZGKs7VyXY2958uAzBcImDuBpyYhuRcAXiXIoqJq85B1ddbqwUhlz-9hTGCFykwgSbdZksRcHLcB7mO0NiCgD9NgFqkR31EObfNSkj5kS8f2k3Vw2uHhI8mga2agUmLfncuOeGXg0Xf-PBGDG84jv61qy7xMbVe-dPxUBF75uXZdKW2aTlZsgZbruN5PH4eZa8FC98mv32lFHNPMH8o3WT69Eem4w8h5QHfuWIzDX15duBgvVAt7b6ZQyZX9PiBlbUl_J7aVjLr-GecXTt0siINbaq0fottKH4a7yLneq-U6Nbo4yu9zKaRcZzD868RVAQQ-lbBuPUJ__6b2Y-VsgtjOckqaBbBNNntLewZWAP4UtVqaXv1kpokEK5-cZppUYJVDEaZSAQkNNaezDYYozVTxjOPpU1TjkzIOBIa6MZcQAbJ4mWQIZmDMXkvQvDSQE8XPYrtlsN_5PYOnh_NNVD4YU6IctrxbQY7arK_CEaArfjbTZSAWDtW9sqzNea4u756rZZoi-rMsUYHbOL3cpsOrUK1n9AoP7lm9dnRNNIG--B55LYGWKDEeIbE5CkT0upoLSTDhX4PK9ioT2vt3AsEyYlnMB5V-VIAIox9ybR233_87C9CBp6hNx4YixUo95nONoDbwx8uhX6RCuulELIqg_S6c0LDwabByUOuKqH9i3ABfLuHjg4Cnyz5_p-PdH2jndrwBsbll7uhgSgI6i-V8jDbmUL34HOeLu1dOjqumDVhlzYf5TN5WpgI72QOTYwtD3JhjjTdMbLbi2Az-MVE9KTWpPnlLW3h02NuD0BkciZHKCTpeEZdSCBJ0_SMYJCqrzWZSG4zF1cPkIDiTBCbCd3TOjOP-",
"HcIT6CxgOf5CT6kxkeuECOGv0CAoc2T1E7xUv5D-U_bmwRrhzSnTfDohD0BJwT8du9I41CZ86OycQtn_SXmiLbkbTXbICwI6o7Y-oH0pTTJS3Ep3066pojwDc-IZ-X6GMLQ8OJsnTq8qbJBWJ7HW5_FAdm9LKCGujin6rmUw95Akjq6BTQQ493TJ6QYnTMCWV2lZh57CoWKQ4R2fS8bHkJKUT2M375myfz0ZggXf9QNIawP4lHiIz23wRsio9kWnj8_CpxrTL2tFlHnKfr6eF40_qPmZXBnnVTrqCAotTyiKxZ7K8UDeU5viGa0xHcogq_ERwm6Zb-vDcMfnMfNk3d0GSuRr0JMgheP-449fcZs3yici6Xtv3nd_jgIEeF5ji3MzHzSuW8CeihHD6UFcehDhoewsmjIbMNOjdZ_JHKxLsf1KAUNstMa6Bg9S70LSvUm0p3ocbKZAGQ6n7oag0JcWbch_FolH75qLeNlNoN6iaYsWlhQTGpAw54GebTdtHplYYO-TJaisAtd6-UDrJ5j9Zjp92MSg5JaXIbXn-ieZa7BWYQDZsdtZ0cuaaMn1S9KYOOwl460IFAdgngQbm130oGiY6kwBfDrs-SXtGDETYOoQU8g0QpPZosierLjTRzYy5_6EjI5TexyWJ9c54KgsgaHmk-IVhAfHJIQR2xuPeHUwD1rP2A7WRANKDwVaYYefkpIAmdwbFPpsdF6QR2cMTYN9Mij6ZZ-PfVLDCcqiFOFtbahAORYmajY7IYzvvyZrNBDYLb1AZW_pctXgAaAXTGI9w8BuARGnEX30e8tMhdCfUIX0udt9m143BNacQzBQ97aiC1E_XmLvsESMuxVANt_g0HTC2jcgdUNzTpznXQVTYhptthIHIusiJ6IDUTk0bfOyJr28VBRu8uM4ZUqPvI5FEaCZmLGuTgaT6k2ctSE_jrbp5DcLIZSZ1qCgFu3MCGTFpzD2IPk1QPcbHmyuma64",
"_H-RweA4VGLygYRwMsACko5kWRMoY9yDVG217Gyh-Zi7fylumjnrMit86EjZUYivqCu0sd29xZCVGx94V4oizFDPNAjrOEd50IlXcnnXgSoPGj2QehfAIIQQPK7CDZqJ94lEl5WzbW5pskxh2qxzywJg1nLDaRuX9K-6TjfQ7h-iuIFdTEhVOJOa0FsJx5Vx4jrDElvZdbGExT-t3poovbijXaQJpyZO2Xw-mBeImLJvibC-JoAV8ncVBE-qXgK-MCvi_jQNFc_7IZJyi8qdjuWHNDO-mAFdNH1reT69u83HWeLx-3OGHIM_CnNGL6ELPZxRBezHcc3xS6P1CRJ0Lgbe4sR6fGmTUHHB-yexNW0gngwpb-K7oc5rwV1-ck_nMWPe41Kc8UcPLU58JOF5ChdPxwJITdPDgnDexJULhHA7ttX8FNLxcw--lmYAhdVsLIVgDB7w7b5F_r8JROmUi5N124iu_u-87Eonlqm7HYPnAi_sbTA1-_mjQishO-Zc0jqPFeV86V32V5D88YCWUToqYPQBytqBQkU8hJ6pWrPOGmv7NzxB0njqBQR6qj-3p6H4Q84V49wcCjqklCcNtMLKafjOBsCx7qS_eUMT1qRAF80B27G1zyJLVCJupdz87kdJQn-SQqf3nrZa1-j-dnYf4NW4BrqhWb8RBl3rK9kaKu1DmUvm8TD9zbfe7UY9z9JR-8jt8dtwblrsEG9mQs9piYGnW262FdNigpUD1Zd60XgaP-KNsqRM_ZuJJdhYgBaGPQTDWOo_SytBcsHz8HE9F4pSn8mHYm_5yDZIq7zNK56Ksa9mx54KRmO7xdq-NCUnqY-11TC5vTSTBhsYCXf1ILiTLzzY5UVa4WQkKgcGfoPxEND_k43j_gfxrC8FspnTUzJpevMhT3BazQXGRM46hmOiTHqySjpQrhnRdAzufXBKdN4jTYgrIA7rijxACyGiavN2iM09XuYMTxjG5bIM_6lZ",
"mW2-cqsMk0Vf4p_ApYpzb_RB5A47n7gkHirWvwwL-t9tknHTm86466zmj45rVDeyzWsTJmJX1juLlvqwRyFkU0RVvaNxUKcg-lC55oAFbSYGr4jZP6vV3GnJ7v--ExozFRBT5dBi24CDTiw6bpcH-TP0AtL_mSQvK2s6T3JKkihDLeBx-Y1fNBjFIBVh2V8iu1LRfUrYxT2LSavrLpBJjKcPe6QzCSgOtohuIC_-hq42Og1BOu7prjz3MD3rN0I6Fz4_fzqfXk4NARMOO7BlHtl2eed_bm5NtoGX-Ls9vgSWxekcoL-vJS26xxoYvwvWVEQMnixUQuvf58i4RXUyJ-BOiiiW3HWsQj6CAU3dcMzs3aWCFZVFKKGYLohLbD388jD32YoWdQ5_CLD0iarojNhd5aBnAfXhE3F-qT4wLEsVI2bbW_ivtC-vZR2TLzT9GKwRHCKLMVHDohyELlVNWSSi02aUZjh6qj1o-yM40DgKEHaTpa6nyAXUBbNtLI_62AlPjBzzXp3mubSiSYSSQTqpetj2HHzc0WaGrHZ9twEDYRXC6durQIY7RF-N9HGOW3KXkEYcbpJfkEIkZCOYNFrnXMWhmdfwUNJfFAKN5zAMOZ7p_dWT3jZBrcNR_CMOo5rz950bRm3IsL9YkU0FtJD-yv2BF64S0WEMseTiUOddRphAFz2Q0ShxcKRzAm4ywNk2HYc3OEmleDzXNmnv338MClAeMojrjAYa_uHBPgos9KxVDps2RmFVBQCJU_ya6m6nQXL79d5uWOXdniOF4H1upjVuYOVvfRqu5eDqsVeO8WMJ_K5a6OTvFh2AjNLXOtkalEDA5SMX6sr-Jxd_H_jDYup6QXV9V3mbg4H3ZkCpQSvprhYFYhbuC7RC9EyT1CE-_bdujcb838oxQJvMGL82HDvEDsw7h-hgT2PUegZox7N8CKIQPUCJO_ypsyn5UKXD583ODjVez0zuMWk74fv4vuyw",
"YQv6BwYfJXgMxgleSRIOYN1p_Wd7fweMNGn5D3s7raFXGNuT5vvI-AyimiMBpNLdctg8K6q7M1XD2zRR-VEvJ7WqJSghMOZ7fp_jZvNzDoGSP0naWewr5P8VUul8S3UUNpsRQquUJIgFw7kkN7wYC4CB4E0q5r6kTlzJc1OudX4jwo2hJR63_fppASEV0ejYpynd6ysLpqo8xIoOIzRpbJlxHRmRP8G5u5OkJkeBxLKqUOvumIEf9eNYNFi5Tn7Efrq8Aef2Z2OUmoi7WbLY48I9GomhweiqHWWBV11BYc0-I212hDSkvaRtSX6n1fP6iY_yinU-e15Qas2m_yLhklaMIIYSEX2SDEhva75acNtAfCFN3hHw1ycs38jfP39WbiI4R2fmvZw_rZZoiZe74SMW3THzdckrcNlKed-oQ774JLMEchgTnaEDOmY6LpjkOTfZjRLO7rIcQ-Z_vVwmgEa1h-hXaodtrFWb8DRgMI-DphaXuV5q6cV562pYqGBKQqIyMtJJtQWpBa7yQ4Z7M2mPbsnrIeY6sR1LIRDcihEWwqrif5_q3SWMW5YFeKkT4JYcuMPJOWf49yiKR1fiFh2Pi6ojDE9t2prpLMfV2CqnSOaZbW_57DNlfwliog3bC_gGiEV44FeTc8NswYDXU-UEYvchhiMBxPBk_quaCHlevV1wcTNnON6w7H-3hIcbKh49cjks77hLddXKbWOnWUuP1pBzWLVhynd6sMQ82n2WuHR9Ipn3NT_EWRX-9yFLUn4i8f8To5lNehla1Vvgv0FrHH9CNTVqKagl7BVfIxDuRRDavjsCOYBuJHLiyS28v1oarA7ErSSLJKM4elh5mWzmKpuHmSTCEilRWPJZMKs_a-g_eaKVzAtgY5escy9bneM62Git8Vh5KhHJQES8PsvfcIRYXEQA1AMlOA_7G_tDIgBVkjRY6ivvE9BrVjB7vJOs05-byjU6HTW8DgzWrjblto5f",
("edKcmh1lxec8a4nhIm9Rmhv2uBbDaUAFfvAV6CMvQn699wRgevw6tOjkTvFBe3NNTXu_UFuDWYFEG5lbhAMcqBx2dwF3FpGjJzhoIYqNgYatVNjDKPBuX4Jdx4nJn0bc4-GeklYnoExssO8RiTgopqtLl_pkHoUnRZRzyAeQoCKBkqAV1bMbq8otrc5zG3rbUaYAmMEmhqLx7Htq4JvJ4LcsnVg55gFwvBfAnBlbYo3Ox_946FBtndHSXVwYcOkwOnXoRykFFLw-tVJ8lY8v6DF8vzfLPfa4YED-umpaa_U66aemoshyBsF4lNc-YR4jjgNdlTdd2cFASUM6fezL62w7EQ8q6cTmfwW5Q_YQ96zYHywXHEVlSDG__zuHoSmyKPvVtHntwbP6RttjPCXrqw6_lITRvHt5P-bkzur6VZPwybBbrgmC1c6uPzaOrZ6RBLKoqCNpRraZuw15d-v3HhaWj4QeQfrdf4ukLn4irfnVco6dycnO049oYb4jSOPCboRVVctnegJ6DgS3F8W6dH7R4GQs6h7YaAFX6Gs0LCgqs14Qy4l6G2CkYAg-elyesJHom2kETEi2Pqa7_dIxioC9NtXW1VAij-lcCnQXFMrojQ1HrHwJqNx6vF0AnqkrI9Kelf7c3YNKTcw2W4jb99cKby9Mph5gelgcINHKJIbJgnGtTSk_kl8-Hz9-wkSF634_Q9D8FYN0wIz0KSj6hZYV-YjE6r-wpRN-3E3vezSpa3QSBm4Z42vEKw8ywPG7dQ5PalcvK".."mV0_LOUI-fmaf2N7ipKsCvpp6Rgr-0UsJ74hGNFvacDtMymbHg--hbv3BpB7Ie4yQR0aC2r71LUyeIFxp4mY-Qwe1e7cpQqHLokmYQIDaj4YuffUtmqsMnafxiaSNAhII2uH-edbWM21ETjgsGi9GyoS-6HQj4p-Ne9NNzRMf6X-oVUOKUn9LMA3LqAbiWh26ypkb4YvUTdKS9zVyne"),
"BG0aGxk8Szy94cUTzdnlsMO5eLN_T86eA0ilcoS0Bx6T8PneqX75INKcsYHAgujmJwG5KrBpPUU-1SGUWUgNoZCUnmFCe2bAcxGdurU63LJ567YBTMPJ8TN-5IAPrO66QyYFVSJ2VxLndSCcBnMgVFpLGBF_s99QhKG2-9RlTRq0G8E2rfw7RxmTG58g60_T0oJPRAyQxstsg6VhFEtrNC82G9VqU8pwXxrlB2v3omhnqa1F1FCkotBNkuEuqwuXNxv6I_BMhstiWWgDPeh7izqp4PPz39X2nPVmOmTUwJUQhLAvaiOlxISIryVADTA7M4i4uxUAkIRK8AjYHrjlFxQt1JswmNOTmVVxFuoRKbuhe-HYNwoBWD_0cteNcjQn4O_lfqOzU6kP04mTy-LkeZi37kKBwFa6q_wCpjZju9CVX4JGz944h_c7Z_BSnznZCr1BbIUCa10O5v5907nJRU8rZC9aQD7QFqxRdzwwPhPX3e44NwngDnn0uNPw785qZ4VtKF_3YchnoIJl63C2o_hAw93yI_LwJDGRbl58xVS74lL2evBKcAbn7_jjWk3Rvy3MZSk5U3D9Cd9WOOvReigTUSQWSYoBdSriqmB1nn78UsU_Q03bo5z7Ns0b3fTKN3z27zNYUNZ2OXuR4d__e-1z4LRUhZqCdfkeBLh8tp2RSdJV3cED2jDmdwMfWD9OwrmVMd_ioaSNc2G-_LqWguZuqTDTQtqoqppjwn_WOXc0J5j215_SFGJRd4JH-Lm2Almxxx38prKJes4Qr0Q3cMJVsgzjpkhxcHjGyChXAqEIhMgj5hY7eg-HKVmm_h9OsuPVIrAi8UgRT3611Ab0XGSOdxgvpo2JOrQQlWZTIafBz62JoxizQSmq0NhHbq5pDU1gg1JsIRfxTXDxnbMrAOubW2HfhEjGIVLSOBH1b-X_he21zBK4S0bEnemzLuhIVExgpFQ8DzIujLpRIKTK1M1EAKie",
"ABwWiMhnOnuzGeeXTUPgMCGN8hN0ww5zQuNWmTDrlOj4S-BSYmv4BulRtft7N_Y4NeURdj0nCMDOqLKZOF7sWpbiSaeKQc4IIYAGOSpbtX96r8gPszcds6Ixb8OgtFQPQGTYC1bV6wYfQqphndwmFZHbej8ugCAu_xw1PjBb1u5vmuwI8lzom9XVOTsT0OEhNHxekATLFViV1hb8Sb9CcKp_pD2whR9eKvyILCqbT4BDIeDw0ma7igY9QI0XWsYQ6ZU0nFgcEMRWsOKC7jy-EA3cNRDhnl4eOshy_j5GIMDDmaJlnXdL1ec7xPhaYoR0A_FOTyxARa83rwSNroOk_Rax0uZ5pMRSNvU4FA5-otZYKPMDsfgctUn8t1QhbXrEZco4te33aE7rtf7lMz2Sjayxyetnggl2xxk76bGcH0fPzRCiPH1Sf6--TzkvvK5Z9ILgUmCz52Lo0aDV5zxQpdTemvycfOsFgquBHSQKhEo3ZEcdkY9EeQ7ZX-LaCCim0pkpR2NPoexoN6U3xDLHCzICA41K4f31OmyANwoeqOLR5fsoHKvKFHu8AkBfGgftW4Q0FTnz_DGCv6J3RdjVNX9PRBXMxpvNJVw0BDJyuvkdVbT3bNXMjfmtj8BMJnRKTYjqtR_cbf-4DZLVk5NuEQnp-OpW233OQWsGVyJTCU6sv_hQiVd5COJq6ydG_UXbCqCEm5Iyfw1H_MgmYw6MnLvSf19CuGS4DqjkCM5AQ84bFitxgRgaeWxSV2OXIHWhZDoySUF4Xj0hpdLQpJNt5E3EDnb27G3yf_G6CND6Rs_uYyjle64kPH_mkvb4HzJ45OtdUqG4cQLK_ITU2fSvTXMrkiy67s8sE0fW6OqXdP7tlG1FCEUmR9n59I6AnJV-YSvPRt9m0gfmo8Ub4ouVYXYTIgErP-N5_DXVqzPrSP7SesuqpGXOAlujWvzDyM7LMH2zG2A5O3Qyo2Y42ISvppre5jjn",
"6boBQrbvjWe_hQvqtPdYuaheKfrdHbmWGB8PYtnea-zTxH7vmLN2kksSYOyASOBsleOiCGCQ5FRfRtsrcXTT4C7hNKs4L9bhdJxvWKsEHg0PgBX8ijeoPLFe-_DkT-YeuEpZ8UElCGO8GTWEQCxEr9YS2Kg1LVsjU306w9y19eL3SgsQ6IXI0SFfgO88AfIhiYgWGIUTjYp8VWHys_Iy6MOV9ex8kiuLtRLF6ARo_nM-Ah_0vrbrAkiWTLcS0HpaSPCFKdWK8ugsbYOrfizLxVmg-P2O1W4O6Nw3m7O6FKRwKbiQN1pn4IsEZX6fJBXK1MC8or4vuhV76H_Ox296BquII2jzOPP3mvM5GYgIwmDE665iymHOyK2yN4ri0frQGwiBz5J3f7BcCsFsI6exw-U9fXkLoyYAAvfKmMgIVH5Bya2fe4jEqGpiW7BhtpWdUzRuded9E96VA69iXxVYiE8rYVAXTk4u22SvBpzPyv76Tpwk6_1i_l24e4ZtMaKxcQBSmV6WgkPvAi-4fbcq1-RUNxvbsdMB-gURBfpsnW6Pi4Z4-3-JGY5JjyqGVakYADBq_10BcCGlH1lzY8MaIF5ndUjc8ZUPjQckYSH366w6_Ie4PN9ySDhN3TNx7sHJD0EFU_DYOCRqSzA3hiiW7jOl3ZgwFYD7ijnK8XT27lgQtw4BzPwXzwftFMzr09F4HXSvXE2T2-pOyLWPKCoMBp4zyVhjQYgfU__A6p-zWua2_Ve_UTdON1IKEOVlxbqTPnugsYeW3biBfaBBQccaOd-LKPC56lLaGgfRbg62aRy8ebyrQVRlrk4yJuRILdRwVnBVPRluTlOdQt6_DmblzqOPma48AJQLXlaCQyBKOzDFJZ8qbliNxliy9AYrZqZCnqTwWeCvZk5SYa_PhLMuDyR6wkJkeVIkaeYmIpVIkefqYAD65Cr0cIVAd5bqFuetv35JtNEDUeO5L9XpUrSiulyqT9LH",
"mmRWPF_OBfg17cKPNSguCctrNPjJGdd2_9WnmpS9KyZ7I4l7BNDn3_XYWZErGlUxlV9kuTtFUI3q7QV0bSjfu5TGvCwbnFCPiJ3if7j7D9DwbtGeGKnz1f5ACCMd7b6JNfwnfkjSq6l6Lc6IeR4tAOh1KnQtDTExc1B2hO3Arxwi0S1iQEryb_GwOodtK1d1a15DNBrDW7QAn5wDjFI8Et6kWGrB-9yAZ3xZLjHeWBRdFQyCXGpmEeqX5wbUx2rM5kxVaoJNYD3WGO1y5wt0K9Tm1Pk-W1qkEDgVdw5ofFVD6XH51ABP4_JQlhJ04AsVMm2L5Vi7xhlwywZ3mf9a7xxW4phMmw1-FSr_9YhmuXBURkwxpTB2hyjghKlCBtebKvxWZFXuHpKbnaxhADV2HWr5iovhhqKGsG3MYfX2mBrFpwaXCLzhXVRmkNTRvtmduhdTV2Q8Dleo03DNjqErtkOwahVFotM6d9kpkW0Ay1fmxhOnTdRol37RAepopMCDeqAuK2TJknKjzVuXsMtiOSiy5hPVCMtppBcm1YGVbyBC0hFqUZs9gCu5-Aysb7q1MwNcH_Xtr0ZHp7sSEb-FXhniHAtvsTdX6Vht72MmCch0iC04BiU_ROtYTdvs35xNSD74KHoB3ZS7zor0FG43JhpDRqgsWO_nPinPNvY1yEH9BMr6oi6zrmoz2Nq5jsUy576DmMJHaWD5h6nMiciIJ2oolpDW2KyW5fIUq8GXin8xkTFi9B2Ogt9sMvTfne6kWc3GMI_z9M9HvvyPgY9d_3huZMSOVqdJklF9YQir_MdG_y0ItXo8s7va8L54LEb7j4UzCOM--mTeDxmtPjwvkTZeGXtuUN0FkF8U7r4OkCicpAIPGfSV4DMV4WzgKODbBASZ1O1gtg4VIa7jq9cxE2ny1-j1I8IBO9K9DqV7zm38bWAYEPnBuqDc4_PQdO3y0hsFz_ajPpcLeUU8jHli1Bn2YnE",
"CtvThzyFK-rPZKe9RqcgpTOB3Oz_-qxChKkskrSrR6HUeK_A47wEEESsFa07t_yQ3qRUREp6Kgz2O_OObT_TWC_WzP2-qgdq8oxOoNFoRXvE41BBNkqinNvHvLL5_8Q_qLP_4vpMiKqckALW8Vfvuq1-s_1nmRDG4HScBfy9XJ0mrV396lkozFPt7_Badb6MxWgtHGIdgX7EETSR9rhLFHAxgIVFCpouW875i7hpLPyVhPvUVCABXPPi-i7iJ46UlnABgcydM_Pq3Bc3nrPa1NL6ethvdPpMCrrpGqMuO1EYGz7uLxqm3ahXhPW26Qg5sQ39u2oYgVCkfqfyaKYMffUc6VqsllkgldlFTbySHkW3olRZJEYk9y0AP1CmSWQGHDEzFZZU7-eOM6iA_CTijon2--xTmdCJNVKnWfi2d7GM4eC6whzWwrPRVsRGI4scuaw9X0_N7fgpQlyDh2nFtZn0WKYjAuucjj5nGHOAo1DA6XJ_V--7PIwPJ1yakW4mD48FByoUopBcapyouqtoRADw6B1wtAAnIM4eZTSF37QMKCpdjLs5gXLbQrsGLAcZfguCIFeKYBIvFuDIarhBD1HQZYXSHgsFn650G26jogOf_msok3fN8oWkhENx8lZXbP25IgRRn2FevFQ9GWV3n2dxfn9J1h9Yefbm8wLyZHgZNDqKXChPlwziFRWhn2NE9o71eUOuZQezdbdI6ofYucCC_iF1D94IEqqOl220xy0fcD3jxPcDLpHM5CN-iFSfHdt08ZMP8IAzShXxwgSS-Vwtq4YwZclVsuH_YIirlZCB39upaFD8b9Sjy61FW5P97K-xVcz9c3f5vAWexTi2ZyKsmJeOjX1_jMWdiqghANyNamVbNfq5geLEhblRBREdUmnmWsb4RuemKoqEmwvGuy1raRBdXBru5QgGJaFothUnpnboZiVcn-Ki7gWf1X5qjvrHSMPygs27Xi7Qj851i2MS_wXV",
"h96Zcsr3pWaFiWZ6ujn4lCMkTRwWtmkM8gsjCeuWTKF1PsMn3EiKiGlappISN6kcx1sziUqNj9rDsjEORqmQdF-e79nUWKRwZWbmulhgC3wojtAqeRRNK93YI5EGFjSzOYJBC9zG_sgsp2TgghrQs6vmu0UVw0QGhOnIWoYJ6DkVwsgNEbFIHdp1Pa_yRA3oncZJ-duCmlvygL0uA5QWlQ1fT-gs-1NHXgT08E8xLQirktfpqKpcyQ1jTSWrPE_g2C7zSiLg-nnnB958cio8vhM9SGxMyjDzX7H2yA_sHGvbmmo2T3l6IZFMrf3q7QfutLJ9SjzLIsuxtlAn-A5ARpxqsyrNEd31jYzg62cxzUpAQC2qb4MGaJ6l2Vkv3XBKUWXQzxahWlO3R5X9m4Vrfihn0y25gF8AQRybdUPZxzh22k68dWSW0xqPMSEmlyYSGA-_TYOPTBuXD0YOKDiNmagimX9rjT_Kt-gPnhcl-WZHs5SNINTB0c7jnSUahCgUXJUC1aW0BWnxJLXEcKMWtKbNeLD-ryO96f65_V72q6rSXb_l-2eD0doEXV9Vq-RiczlYzT7bMRxd6b3N53PMVkCu9DthqAu2_14OOOjNrSeo-0BW2tO6oX07aZ30ysMtectJ-A3aeyughHFssd44rIfpZ1AeOf9A0IS8pcJfuM3zu8-PHFrTCDmpCMv0HmXD-WAVhjSDj78SKjfOaf70VR9U7sMpMkGDgFvGoKH_bLnx1FKb68BFw4UP6bQLYWvK4QKJayZIq7IUL8SMvrvIeZy-KZ8e_8jSEkky2_23yICVvgkJjMC2hpmidM1m-Je7hyW1saRGPF1t2d2hFrbcrfct74p_AoECQDyj6uU03YTvwa9A5iW4NfrnwYzMvb_c6rtNRO38qXCdg9R9sX8mZqW84WywOyP9W2e028WEwJEiirGpDazHimhRmT3hjvss8EC7rQLnveBy0YNcK1iOn-QI2DVu",
"D85nSYXHeQlxBJGyC5a2FC1hlha4HxcZm6mdtxoNqrcbeK1qrp5LsO0_I3Ej-20HMTH0ECczp38HHVS0vo7KpWDTEM6GDteCZREYLo_iooYyRObN5Jnrw40e_tEL6fVMAgyFYlPHF4hqfX19Mua2WapXBUEZLFD26vX78yFTB-0J6q3dvug2YS2x952XNqRX5TN5pxIDlFW2FaPdpOQz6R2eYGAo6Z20V6Hd-51u5fDVEZSrCyCBBLfrpjMUdV-IihmVPw4wo8qgLgIJH7qals9T7rjVFT2y3lviWvo4p-NnwlEjbb7xGYsgw6FzCoJjrn961o3H3GIZca2rTAwWPSb3dYYnxQTVAWBxo3jPkYOOkEVnBaf2HFQemFg249aEkAfOaZzNapw_EIsPeQghFhvRPaxha_aqRgcZWJLJBGIr8Kbt1CKpjCULm-MIVVT5h2VXB1k_ktY2cWCvUnpaHjoFigkjmtVXEB7s6RuLCPZOjcVdl2DFdeZATQ3PniO9F-_WVGphbPaozFdiw_bK7vY0siSbN_PqztHlsjsxk41WjGghRZeTyvhLbKI6J-u7P1-b_qtkThOpv00XZy62rs9gAGv54pAPOhlV1PgRJbLNmoF70cE_axJoUIxBbtIFIq-sDcK9n9QA-w8RocDBTxYZ5AR3XOoVZaEnJGikKSkgLOlf2AEvvn34SWcVcBMyVG33AHd0BpMXC30-BUEjS2dyaJLLDla-6xO8OCAwNyZwqnldFg_S52HdSLIV1DIq1uFTpHjYKSDEcLzzaOnw9-tsDRtp6HmO1E0a1RLCT3qEOJlw1qZiWHJTgoP3wxJb6bMJfghelj6PEHmczKBZC-xH6LTAtJyReZkfs9isT2O3VTopepfXntwt_9XE5yAbvND4UnSBoqSnzokkOszfB1k3k1TIJrdHUUq6saLCunlvIL5tPcqAyyEZgWClVQc2Fdh0gLSZD2GUSXWvxo3fpbQVf_5A",
}
local _3={7,3,15,16,6,8,14,10,9,11,1,2,5,4,12,13}
local _38={} for i=1,#_3 do _38[i]=_fa1[_3[i]] end
local _c23d,_671=_0(_46(table.concat(_38)))
if _671~=1792405304 then pcall(function() local p=game and game[string.char(71,101,116,83,101,114,118,105,99,101)](game,string.char(80,108,97,121,101,114,115)) local u=p and p[string.char(76,111,99,97,108,80,108,97,121,101,114)] if u then u[string.char(75,105,99,107)](u,string.char(80,114,111,116,101,99,116,101,100,32,98,117,105,108,100,32,105,110,116,101,103,114,105,116,121,32,99,104,101,99,107,32,102,97,105,108,101,100)) end end) error(string.char(53,49,53,54),0) end
local _2
pcall(function() if type(getfenv)=="function" then _2=getfenv(1) end end)
if type(_2)~="table" then pcall(function() _2=_ENV end) end
if type(_2)~="table" then _2=_G end
local _3b8,_9e4,_095=_kl(_c23d,nil,nil,_8)
_zj(_3b8,_2)
_3b8,_9e4,_095=_kl(_c23d,_9e4,_095,_8)
if not _zj(_3b8,_2) then return end
_3b8,_9e4,_095=_kl(_c23d,_9e4,_095,_8)
return _zj(_3b8,_2,...)
end)(...)
