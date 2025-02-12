-- recipe-category.lua

local distilling = {
    type = "recipe-category",
    name = "distilling"
}

local growing = {
    type = "recipe-category",
    name = "growing"
}

local fermenting = {
    type = "recipe-category",
    name = "fermenting"
}

data:extend {
    distilling,
    growing,
    fermenting
}