let g:scrollThroughTime = 0

function! ToggleScrollThroughTime()
	if !g:scrollThroughTime
		call ScrollThroughTime()
	else
		call ScrollThroughTimeOff()
	endif
endfunction

function! ScrollThroughTime()
	echo "You're now scrolling through time, be careful time lord"
	let g:scrollThroughTime = 1
	noremap <ScrollWheelUp>     u
	noremap <2-ScrollWheelUp>   u
	noremap <3-ScrollWheelUp>   u
	noremap <4-ScrollWheelUp>   u
	noremap <ScrollWheelDown>   <C-R>
	noremap <2-ScrollWheelDown> <C-R>
	noremap <3-ScrollWheelDown> <C-R>
	noremap <4-ScrollWheelDown> <C-R>
endfunction

function! ScrollThroughTimeOff()
	echo "Not scrolling through time anymore, the space time continuum is safe."
	let g:scrollThroughTime = 0
	nunmap <ScrollWheelUp>
	nunmap <2-ScrollWheelUp>
	nunmap <3-ScrollWheelUp>
	nunmap <4-ScrollWheelUp>
	nunmap <ScrollWheelDown>
	nunmap <2-ScrollWheelDown>
	nunmap <3-ScrollWheelDown>
	nunmap <4-ScrollWheelDown>
endfunction
