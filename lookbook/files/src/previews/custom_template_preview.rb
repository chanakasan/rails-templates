# @label Custom Template Example
class CustomTemplatePreview < Lookbook::Preview

  # @param emoji select { choices: [[🚀 Rocket, 🚀],[❤️ Heart, ❤️],[😱 Scream, 😱]] }
  def default(emoji: "🚀")
    render_with_template(locals: {
      emoji: emoji
    })
  end
end
