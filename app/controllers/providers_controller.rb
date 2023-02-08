class ProvidersController < ApplicationController
  rescue_from OpenIDConnect::Discovery::DiscoveryFailed, OpenIDConnect::Discovery::InvalidIdentifier do |e|
    flash[:error] = {
      title: 'Discovery Failed',
      text: "Could not discover your OP: #{e.inspect}"
    }
    redirect_to root_url
  end

  def create
    provider = Provider.discover! params[:host]
    Rails.logger.warn("*** provider: #{provider.inspect}")
    Rails.logger.warn("    registered? #{provider.registered?}")
    Rails.logger.warn("    provider_open_id_url: #{provider_open_id_url(provider).inspect}")
    unless provider.registered?
      provider.register! provider_open_id_url(provider)
    end
    redirect_to provider.authorization_uri(
      provider_open_id_url(provider),
      new_nonce
    )
  end
end
