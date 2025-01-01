// {1 :folke/flash.nvim
//  :event :VeryLazy
//  :keys [{1 :s
//          2 (fn []
//              ((. (require :flash) :jump)))
//          :desc :Flash
//          :mode [:n :x :o]}
//         {1 :S
//          2 (fn []
//              ((. (require :flash) :treesitter)))
//          :desc "Flash Treesitter"
//          :mode [:n :x :o]}
//         {1 :r
//          2 (fn []
//              ((. (require :flash) :remote)))
//          :desc "Remote Flash"
//          :mode :o}
//         {1 :R
//          2 (fn []
//              ((. (require :flash) :treesitter_search)))
//          :desc "Treesitter Search"
//          :mode [:o :x]}
//         {1 :<c-s>
//          2 (fn []
//              ((. (require :flash) :toggle)))
//          :desc "Toggle Flash Search"
//          :mode [:c]}]
//  :opts {}}	

{1 
	:folke/flash.nvim
	:event :VeryLazy
	:keys [
		{ :s (:mode [:n :x :o]) (fn [] (require("flash").jump())) (:desc "Flash") }
	]}
