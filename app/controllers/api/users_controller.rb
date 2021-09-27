class Api::UsersController < ApplicationController
    def getUsers
        user = User.all
        if user
            render json: user, status: :ok
        else
            render json: {msg: "user empty"}, status: :unprocessable_entity
        end
    end

    def addUser
        user = User.new(userparams)
        if user.save
            render json: user, status: :ok
        else
            render json: {msg: "no user added"}, status: :unprocessable_entity
        end
    end

    def showUser
        @user =  User.find(params[:id])
        if @user
            render json: @user, status: :ok
        else
            render json: {msg: "no user found"}, status: :unprocessable_entity
        end
    end

    private
    def userparams
        params.permit(:firstName, :lastName, :email)
    end
end
