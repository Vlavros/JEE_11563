package br.com.vlavros.dto;

import java.util.List;

import br.com.vlavros.model.Usuario;

public class UsuarioDTO {

    private boolean mOk;
    private String  mMensagem;
    private Usuario mUsuario;

    public UsuarioDTO()
    {
        super();
    }

    public UsuarioDTO(boolean pOk, String pMensagem)
    {
        super();
        mOk = pOk;
        mMensagem = pMensagem;
    }

    public UsuarioDTO(boolean pOk, String pMensagem, Usuario pUsuario)
    {
        super();
        mOk = pOk;
        mMensagem = pMensagem;
        mUsuario = pUsuario;
    }

    public UsuarioDTO(boolean pOk, String pMensagem, List<Usuario> pUsuario) {
        super();
        mOk = pOk;
        mMensagem = pMensagem;
        //mUsuario = pUsuario;		
	}

	public boolean isOk()
    {
        return mOk;
    }

    public void setOk(boolean pOk)
    {
        mOk = pOk;
    }

    public String getMensagem()
    {
        return mMensagem;
    }

    public void setMensagem(String pMensagem)
    {
        mMensagem = pMensagem;
    }

    public Usuario getUsuario()
    {
        return mUsuario;
    }

    public void setUsuario(Usuario pUsuario)
    {
    	mUsuario = pUsuario;
    }
	
}
