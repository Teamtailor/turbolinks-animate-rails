module TurbolinksAnimateHelper

    def turbolinks_animate animation
        @turbolinks_animate_animation = animation.to_json
    end

    def turbolinks_animate_body options = {}, &block
        default_options = {
            class: ''
            data: {}
        }
        options = default_options.merge options
        if @turbolinks_animate_animation
            options[:class] += ( options[:class].length > 0 ? 'turbolinks-animate ' : 'turbolinks-animate' )
            options[:data][:turbolinks_animate_animation] = @turbolinks_animate_animation
        end
        if block_given?
            content_tag 'body', options, capture(&block)
        end
    end

end
