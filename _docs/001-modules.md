# modules:
## 用户模块(User/Session)：
单用户，只有一个用户，存在ENV中
admin/xxx
参考这个项目：rails-practice-jkf （提一个公用的gem出来）
https://github.com/afeiship/rails-practice-jkf



## 文章模块(Post)：


## 标签模块(Tag)：


## 评论模块(Comment)：

## 友情链接(Link)：

## 通用设置(Option)：

## 静态页面(Page)：
这部分实现成rails controller就可以，可以做一个表单配置的方式，可以考虑成通用的gem，但不需要做成有界面的config:
http://stackoverflow.com/questions/35021148/dynamically-create-methods-in-controller-rails

参考实现如下：
```ruby
class PagesController < ApplicationController

  pages = %w[ page1 page2 page3 ]

  pages.each do |page|          
    define_method(page) do
      #do nothing
    end
  end
end
```












