PGDMP  #    -                |            Usuarios    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49162    Usuarios    DATABASE        CREATE DATABASE "Usuarios" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE "Usuarios";
                postgres    false            �            1259    49164    datos    TABLE     �   CREATE TABLE public.datos (
    id integer NOT NULL,
    cedula character varying(10),
    nombre character varying(50),
    apellido character varying(50),
    genero character(15)
);
    DROP TABLE public.datos;
       public         heap    postgres    false            �            1259    49163    datos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.datos_id_seq;
       public          postgres    false    216            �           0    0    datos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.datos_id_seq OWNED BY public.datos.id;
          public          postgres    false    215            P           2604    49167    datos id    DEFAULT     d   ALTER TABLE ONLY public.datos ALTER COLUMN id SET DEFAULT nextval('public.datos_id_seq'::regclass);
 7   ALTER TABLE public.datos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    49164    datos 
   TABLE DATA           E   COPY public.datos (id, cedula, nombre, apellido, genero) FROM stdin;
    public          postgres    false    216   �       �           0    0    datos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.datos_id_seq', 16, true);
          public          postgres    false    215            R           2606    49171    datos datos_cedula_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_cedula_key UNIQUE (cedula);
 @   ALTER TABLE ONLY public.datos DROP CONSTRAINT datos_cedula_key;
       public            postgres    false    216            T           2606    49169    datos datos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.datos
    ADD CONSTRAINT datos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.datos DROP CONSTRAINT datos_pkey;
       public            postgres    false    216            �   >  x�m��j�0E�����H��tW��:j"P�"GY��;���*��p��\!��VY�P@_���O��q(�Ǵ��F�贑j+�J �S����.�a�F́�XFa[(�KNU`h�Z�	d&�4r⏻U��L	)��lח��j���bI���%��G��O��T�<z*����_�b�X˛��M�c"G��;�ݴ�\�a��x��R�X>8JaZ%Zxn.هP; ��TF�U�~�|H��V��Ѱ�h�棛+�s+x�KK�Y��{j��C�Q��.;v�N{�.̏�n�,a���4lNt����C�4��O��     