{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}


{% block title %} {{ theme.keywords }} - {{ config.title }}{{ theme.description }} {% endblock %}
{% block content %}

  <div class="posts-expand">
    {%- for post in page.posts.toArray() %}
      {{ partial('_macro/post.swig', {post: post, is_index: true}) }}
    {%- endfor %}
  </div>

  {% include '_partials/pagination.swig' %}

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
