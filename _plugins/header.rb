class Jekyll::MarkdownHeader < Jekyll::Converters::Markdown
    def convert(content)
        super.gsub(/<h(\d) id="(.*?)">/, '<h\1 id="\2" style="margin-left:-2rem"><a href="#\2" style="font-size:0.6em; border: none;color: var(--heading-color)"><i class="fa fa-link" aria-hidden="true"></i></a> ')
    end
end