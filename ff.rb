#!/usr/bin/env ruby

if `git branch | grep -q master`
	puts hi
end
