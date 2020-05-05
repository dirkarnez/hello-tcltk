wm title . "Hello World"
wm geometry . 500x500
pack [button .b -text "New window" -command makeWindow]
pack [button .hello -text "Quit" -command { exit }]

set counter 0

proc makeWindow {} {
    # Make a unique widget name
    global counter
    set w .gui[incr counter]

    # Make the toplevel
    toplevel $w
    wm title $w "This is $w"
    wm geometry $w 500x500
    # Put a GUI in it
    pack [label $w.xmpl -text "This is an example"]
    pack [button $w.ok -text OK -command [list destroy $w]]
}
