module AuthorizeNet::API
  class Transaction < ApiTransaction    
        
    def initialize(api_login_id, api_transaction_key, options = {})
       super
    end
       
    # This request enables you to create a transaction, and optional customer profile.
    # NOTE: Tokenized transactions (e.g. Apple Pay), or PayPal should not be used to
    # create payment profiles.
    # 
    # See spec/api_spec.rb for usage examples
    def create_transaction(request)  
      make_request(request,CreateTransactionResponse,Type::API_CREATE_TRANSACTION)
    end
    
    # This request enables you to create a recurring billing subscription
    # 
    # See spec/api_spec.rb for usage examples
    def create_subscription(request)
      make_request(request,ARBCreateSubscriptionResponse,Type::API_CREATE_SUBSCRIPTION)
    end

    # This request enables you to update a recurring billing subscription
    # 
    # See spec/api_spec.rb for usage examples
    def update_subscription(request)
      make_request(request,ARBUpdateSubscriptionResponse,Type::API_UPDATE_SUBSCRIPTION)
    end

    # This request enables you to cancel a recurring billing subscription
    # 
    # See spec/api_spec.rb for usage examples
    def cancel_subscription(request)
      make_request(request,ARBCancelSubscriptionResponse,Type::API_CANCEL_SUBSCRIPTION)
    end

    # This request enables you to get a recurring billing subscription status
    # 
    # See spec/api_spec.rb for usage examples
    def get_subscription_status(request)
      make_request(request,ARBGetSubscriptionStatusResponse,Type::API_GET_SUBSCRIPTION_STATUS)
    end

    # This request enables you to get a list of all recurring billing subscriptions
    # 
    # See spec/api_spec.rb for usage examples
    def get_subscription_list(request)
      make_request(request,ARBGetSubscriptionListResponse,Type::API_GET_SUBSCRIPTION_LIST)
    end

    # This request enables you to create a customer profile
    # 
    # See spec/api_spec.rb for usage examples
    def create_customer_profile(request)
      make_request(request,CreateCustomerProfileResponse,Type::API_CREATE_CUSTOMER_PROFILE)
    end
    
    # This request enables you to retrieve a customer profile
    # 
    # See spec/api_spec.rb for usage examples
    def get_customer_profile(request)
      make_request(request,GetCustomerProfileResponse,Type::API_GET_CUSTOMER_PROFILE)
    end


    # This request enables you to retrieve all customer profile ids
    # 
    # See spec/api_spec.rb for usage examples
    def get_customer_profile_ids(request)
      make_request(request,GetCustomerProfileIdsResponse,Type::API_GET_CUSTOMER_PROFILE_IDS)
    end

    # This request enables you to update a customer profile
    # 
    # See spec/api_spec.rb for usage examples
    def update_customer_profile(request)
      make_request(request,UpdateCustomerProfileResponse,Type::API_UPDATE_CUSTOMER_PROFILE)
    end

    # This request enables you to delete a customer profile
    # 
    # See spec/api_spec.rb for usage examples
    def delete_customer_profile(request)
      make_request(request,DeleteCustomerProfileResponse,Type::API_DELETE_CUSTOMER_PROFILE)
    end
   
    # This request enables you to create a customer payment profile
    # 
    # See spec/api_spec.rb for usage examples
    def create_customer_payment_profile(request)
      make_request(request,CreateCustomerPaymentProfileResponse,Type::API_CREATE_CUSTOMER_PAYMENT_PROFILE)
    end
    
    # This request enables you to retrieve a customer payment profile
    # 
    # See spec/api_spec.rb for usage examples
    def get_customer_payment_profile(request)
      make_request(request,GetCustomerPaymentProfileResponse,Type::API_GET_CUSTOMER_PAYMENT_PROFILE)
    end

    # This request enables you to update a customer payment profile
    # 
    # See spec/api_spec.rb for usage examples
    def update_customer_payment_profile(request)
      make_request(request,UpdateCustomerPaymentProfileResponse,Type::API_UPDATE_CUSTOMER_PAYMENT_PROFILE)
    end

    # This request enables you to delete a customer payment profile
    # 
    # See spec/api_spec.rb for usage examples
    def delete_customer_payment_profile(request)
      make_request(request,DeleteCustomerPaymentProfileResponse,Type::API_DELETE_CUSTOMER_PAYMENT_PROFILE)
    end

    # This request enables you to create a customer shipping profile
    # 
    # See spec/api_spec.rb for usage examples
    def create_customer_shipping_profile(request)
      make_request(request,CreateCustomerShippingAddressResponse,Type::API_CREATE_CUSTOMER_SHIPPING_PROFILE)
    end
    
    # This request enables you to retrieve a customer shipping profile
    # 
    # See spec/api_spec.rb for usage examples
    def get_customer_shipping_profile(request)
      make_request(request,GetCustomerShippingAddressResponse,Type::API_GET_CUSTOMER_SHIPPING_PROFILE)
    end

    # This request enables you to update a customer shipping profile
    # 
    # See spec/api_spec.rb for usage examples
    def update_customer_shipping_profile(request)
      make_request(request,UpdateCustomerShippingAddressResponse,Type::API_UPDATE_CUSTOMER_SHIPPING_PPROFILE)
    end

    # This request enables you to delete a customer shipping profile
    # 
    # See spec/api_spec.rb for usage examples
    def delete_customer_shipping_profile(request)
      make_request(request,DeleteCustomerShippingAddressResponse,Type::API_DELETE_CUSTOMER_SHIPPING_PPROFILE)
    end
   

    # This request enables you to create a customer profile, payment profile,
    # and shipping profile from an existing successful transaction.
    # NOTE: Tokenized transactions (e.g. Apple Pay), or PayPal should not be used to
    # create payment profiles.
    # 
    # See spec/api_spec.rb for usage examples
    def create_customer_profile_from_transaction(request)
      make_request(request,CreateProfileResponse,Type::API_CREATE_CUSTOMER_PROFILE_FROM_TRANSACTION)
    end
    
    # This request enables you to delete a customer profile.
    # 
    # See spec/api_spec.rb for usage examples
    def delete_customer_profile(request)
      make_request(request,DeleteCustomerProfileResponse,Type::API_DELETE_CUSTOMER_PROFILE)
    end

    # This request enables you to decrypt a payment data blob.
    # 
    # See spec/api_spec.rb for usage examples
    def decrypt_payment_data(request)
      make_request(request,DecryptPaymentDataResponse,Type::API_DECRYPT_PAYMENT_DATA)
    end

    # This request enables confirm authentication values
    # 
    # See spec/api_spec.rb for usage examples
    def authenticate_test_request(request)            
      make_request(request,AuthenticateTestResponse,Type::API_AUTHENTICATE_TEST_REQUEST)
    end

  end
end