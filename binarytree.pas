program TreeNod;
type
   TreeNodePtr = ^TreeNode;
   TreeNode    = record
		    data       : longint;
		    left,right : TreeNodePtr;
		 end;
procedure AddToTree (var p : TreeNodePtr; n : longint; var ok : boolean);
begin
   if p = nil then
      begin
	 new(p);
	 p^.left:=nil;
	 p^.right:=nil;
	 p^.data:=n;
	 ok:=true
      end
   else
      if n < p^.data then
	 AddToTree(p^.left,n,ok)
      else if n > p^.data then
	 AddToTree(p^.right,n,ok)
	 else
	    ok:=false
end;

function SumTree (var p : TreeNodePtr): longint;
begin
   if p = nil then
      SumTree:=0
      else
	 SumTree:=SumTree(p^.left) + p^.data + SumTree(p^.right)
end;

procedure FindInTree (p	: TreeNodePtr; n : longint; var ok : boolean);
begin
   if p = nil then
      ok:=false {there should be this}
      else
	 if n < p^.data then
	    FindInTree(p^.left,n,ok)
	    else
	       if n > p^.data then
		  FindInTree(p^.right,n,ok)
		  else
		     ok:=false
end;

var
   p  : TreeNodePtr;
   n  : longint;
   ok : boolean;
   begin
      while eof do
	 begin
	    read(n);
	    AddToTree(p,n,ok);
	    FindInTree(p,n,ok);
	    if not ok then
	       writeln('yes')
	       else
		  writeln('no')
	   { writeln(n);
	   n:=SumTree(p);
	    writeln(n)}
	 end
   end.
