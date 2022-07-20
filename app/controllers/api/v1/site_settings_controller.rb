# frozen_string_literal: true

module Api
  module V1
    class SiteSettingsController < ApiController
      # GET /api/v1/site_settings/:name
      def show
        render_data data: SettingGetter.new(setting_name: params[:name], provider: 'greenlight').call, status: :ok # TODO: - ahmad: fix provider
      end
    end
  end
end
