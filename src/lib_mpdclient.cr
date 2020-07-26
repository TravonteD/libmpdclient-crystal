require "./lib_mpdclient/*"

# C-Bindings for lib 
@[Link("libmpdclient")]
lib LibMpdClient
  VERSION = "0.1.0"
end
