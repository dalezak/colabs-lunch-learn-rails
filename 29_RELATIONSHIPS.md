# Relationships
- `app/views/reasons/index.html.erb`
```
<ul class="list-group list-group-flush">
  <% reason.points.each do |point| %>
    <li class="list-group-item"><%= point.text %></li>
  <% end %>
</ul>
```
![N+1](https://dab1nmslvvntp.cloudfront.net/wp-content/uploads/2016/11/1480438799n1_1.png)