module ApplicationHelper

  def fa_icon(icon_name)
    content_tag :i, nil, class: ('fa fa-' + icon_name)
  end

  def model_name(model)
    if model.instance_of?(Class)
      model.model_name.human
    end
  end

  def models_name(model)
    if model.instance_of?(Class)
      return model.model_name.human(count: 2)
    end
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

  def full_title(page_title)
    base_title = 'Verkstad'
    if page_title.empty?
      base_title
    else
      %(#{base_title} | #{page_title})
    end
  end
end
